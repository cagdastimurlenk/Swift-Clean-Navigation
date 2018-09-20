//
//  MovieListViewController.swift
//  MovieSelector
//
//  Created by Cagdas Timurlenk on 20.09.2018.
//  Copyright © 2018 CodeAndDreams. All rights reserved.
//

import UIKit

protocol MovieListDisplayLogic: class {
    func displayMovieList(_ viewModel: MovieList.ViewModel)
}

class MovieListViewController: UIViewController,MovieListDisplayLogic,MovieRouter {

    
    // MARK: - Properties
    static let identifier = "MovieListViewController"
    var interactor: MovieListBusinessLogic?
    var initialMovies : [MovieList.ViewModel.MovieViewModel]?
    var movies: [MovieList.ViewModel.MovieViewModel]?{
        didSet{
//            notFoundView.isHidden =  (electricians?.count ?? 0 != 0)
//            tableView.reloadData()
        }
    }
    
    // MARK: - Initialization
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?){
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup(){
        let viewController = self
        let interactor = MovieListInteractor()
        let presenter = MovieListPresenter()
        
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func displayMovieList(_ viewModel: MovieList.ViewModel) {
        //.....
    }

    @IBAction func toChildClick(_ sender: Any)
    {
        showMoviePage()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
