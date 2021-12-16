import os
import pickle
import numpy as np  
    # with open(results_path, 'wb') as output:
    #     pickle.dump(results, output)


    # def _load_diameters( diameter_path = "data/ycb_diameter.pkl"):
    # with open(diameter_path, 'rb') as handle:
    #     self.diameters = pickle.load(handle)


if __name__ == "__main__":
    results_path =  "data/results_original.pkl"
    with open(results_path, 'rb') as handle:
        results = pickle.load(handle)

    add_list = []
    rep_list = []
    for class_name in results.keys():
        add_list.append(results[class_name]['add acc'])
        rep_list.append(results[class_name]['REP acc'])

    add_list = np.array(add_list)
    rep_list = np.array(rep_list)
    print('ADD mean')
    print(np.mean(add_list))
    print('REP mean')
    print(np.mean(rep_list))


