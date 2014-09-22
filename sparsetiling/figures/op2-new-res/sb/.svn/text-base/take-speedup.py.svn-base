def speedup (src, dest, ref):
    with open (dest,"w") as destfile:
        lines = [line.strip() for line in open(src)]
        for i in lines:
            speed = ref / float(i.split()[1])
            destfile.write(i.split()[0] + " " + str(speed) + "\n")
    
with open ("unstaging.txt", "r") as f:
    line = f.readline()
    val = float(line[2:-1])

speedup ("mpi.txt", "speedup-mpi.txt", val)
speedup ("unstaging.txt", "speedup-unstaging.txt", val)
speedup ("tiling.txt", "speedup-tiling.txt", val)
