from multiprocessing import Pool, cpu_count

num_processes = cpu_count()
p = Pool(processes=num_processes)
print(num_processes)