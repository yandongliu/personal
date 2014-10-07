import sys

f_quj = sys.argv[1]
f_fv = sys.argv[2]

fp_quj = open(f_quj,'r')
fp_fv = open(f_fv,'r')

fp_quj.readline()

#feature name-id mapping
x_fname2id={}
fea_cnt=0
aa = fp_fv.readline().strip().split('\t')
for fea in aa:
  x_fname2id[fea] = fea_cnt
  fea_cnt+=1

query_cnt=0
prev_q = None

for l_quj in fp_quj:
  aa_quj = l_quj.strip().split('\t')
  label = aa_quj[3]
  query = aa_quj[1]
  aa_fv = fp_fv.readline().strip().split('\t')
  aa_fv = aa_fv[:-1] #remove label
  if prev_q==None:
    prev_q = query
  elif prev_q != query:
    prev_q = query
    query_cnt+=1
  f_vec = [label,'qid:'+str(query_cnt)]
  for i,a in enumerate(aa_fv):
    f_vec.append(str(i+1)+':'+a)
  print ' '.join(f_vec)
    

fp_quj.close()
fp_fv.close()
