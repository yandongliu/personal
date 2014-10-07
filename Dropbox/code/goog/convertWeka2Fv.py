import sys

#f_weka = '/Users/yandong/dev/ml/weka-3-7-11/data/numeric/pbc.arff'
#f_fv = '/tmp/tmp.fv'

f_weka = sys.argv[1]
f_fv = sys.argv[2]

fp_weka = open(f_weka, 'r')
fp_fv = open(f_fv,'w')
l_feature=[]
indata=False
for l in fp_weka:
  l = l.strip()
  if l.startswith('%'): continue 
  if l.startswith('@attribute'):
    fname = l.split(' ')[1]
    if fname != 'class':
      l_feature.append(fname)
    else:
      l_feature.append('label')
  if l.startswith('@data'):
    fp_fv.write('\t'.join(l_feature)+'\n')
    indata = True
    continue 
  if indata: 
    fp_fv.write('\t'.join(l.split(','))+'\n')
fp_weka.close()
fp_fv.close()
