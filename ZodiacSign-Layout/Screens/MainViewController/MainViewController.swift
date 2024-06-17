//
//  ViewController.swift
//  Challange-ZodiacSign-Layout
//
//  Created by Apple M1 on 08.06.2024.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    // MARK: - UI

    private lazy var contentView: UIView = {
        let scrollView = UIView()
        
        scrollView.layer.cornerRadius = 15
        scrollView.backgroundColor = .white
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let scrollView = UIScrollView()
    let backgroundContentView = UIView()
    
    // MARK: - Header Stack View
    
    private let headerStackView = UIStackView(
        axis: .horizontal,
        distribution: .equalSpacing
    )
    
    private let heartButton = UIButton(image: .heart)
    private let closeButton = UIButton(image: .close)
    private let nameLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato400, size: 24)
    )
    
    // MARK: - Fullname Stack View
    
    private let fullNameStackView = UIStackView(
        axis: .vertical,
        spacing: 14
    )
    
    // MARK: - Nami Image
    
    private let namiImageView = UIImageView(image: .nami)
    
    private lazy var fullNameView: UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor(resource: .lightRose).cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private let fullNameLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato400, size: 18),
        alignment: .center,
        numberOfLines: 2
    )
    
    // MARK: - Zodiac Main Stack View
    
    private let zodiacMainStackView = UIStackView(
        axis: .horizontal,
        alignment: .center,
        distribution: .fillEqually
    )
    
    // MARK: - Zodiac Left Stack View
    
    private let zodiacLeftInfoStackView = UIStackView(
        axis: .vertical,
        spacing: 22,
        distribution: .equalSpacing
    )
    
    // MARK: - Zodiac Sign Stack View
    
    private let zodiacSignStackView = UIStackView(
        axis: .vertical,
        spacing: 3
    )
    
    private let zodiacSignLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14)
    )
    
    private let zodiacSignNameLabel = UILabel(
        color: .jet,
        font: UIFont(name: K.fontLato400, size: 14)
    )
    
    // MARK: - Zodiac Element Stack View
    
    private let zodiacElementStackView = UIStackView(
        axis: .vertical,
        spacing: 3
    )
    
    private let zodiacElementLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14)
    )
    
    private let zodiacElementNameLabel = UILabel(
        color: .jet,
        font: UIFont(name: K.fontLato400, size: 14)
    )
    
    // MARK: - Zodiac Stone Stack View
    
    private let zodiacStoneStackView = UIStackView(
        axis: .vertical,
        spacing: 3
    )
    
    private let zodiacStoneLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14)
    )
    
    private let zodiacStoneNameLabel = UILabel(
        color: .jet,
        font: UIFont(name: K.fontLato400, size: 14)
    )
    
    // MARK: - Person Image
    
    private let personImageView = UIImageView(
        image: .person,
        contentMode: .scaleAspectFill
    )
    
    // MARK: - Zodiac Right Stack View
    
    private let zodiacRightInfoStackView = UIStackView(
        axis: .vertical,
        spacing: 22,
        distribution: .equalSpacing
    )
    
    // MARK: - Zodiac Ascendant Stack View
    
    private let zodiacAscendantStackView = UIStackView(
        axis: .vertical,
        spacing: 3
    )
    
    private let zodiacAscendantLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14),
        alignment: .right
    )
    
    private let zodiacAscendantNameLabel = UILabel(
        color: .jet,
        font: UIFont(name: K.fontLato400, size: 14),
        alignment: .right
    )
    
    // MARK: - Zodiac Color Stack View
    
    private let zodiacColorStackView = UIStackView(
        axis: .vertical,
        spacing: 3
    )
    
    private let zodiacColorLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14),
        alignment: .right
    )
    
    private let zodiacColorNameLabel = UILabel(
        color: .jet,
        font: UIFont(name: K.fontLato400, size: 14),
        alignment: .right
    )
    
    // MARK: - Zodiac Abode Stack View
    
    private let zodiacAbodeStackView = UIStackView(
        axis: .vertical,
        spacing: 3
    )
    
    private let zodiacAbodeLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14),
        alignment: .right
    )
    
    private let zodiacAbodeNameLabel = UILabel(
        color: .jet,
        font: UIFont(name: K.fontLato400, size: 14),
        alignment: .right
    )
    
    // MARK: - Character Traits Stack View
    
    private let characterTraitsStackView = UIStackView(
        axis: .vertical,
        spacing: 16
    )
    
    private let characterTraitsLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato600, size: 18),
        alignment: .center
    )
    
    // MARK: - Traits Elements Stack View
    
    private let traitsElementsStackView = UIStackView(
        axis: .horizontal,
        spacing: 28,
        distribution: .fillEqually
    )
    
    // MARK: - Luck Elements Stack View
    
    private let luckElementsStackView = UIStackView(axis: .vertical)
    
    // MARK: - Luck elements
    
    private let luckLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14)
    )
    
    private let emptyLuckView = UIView(backgroundColor: .clear)
    private let luckProgressView = UIProgressView(
        tintColor: .darkRose,
        trackTintColor: .darkRose,
        cornerRadius: 12
    )
    
    private let emptyLuckProgressView = UIView(backgroundColor: .clear)
    private let luckProgressLabel = UILabel(
        color: .fadingRose,
        font: UIFont(name: K.fontLato400, size: 13)
    )
    
    // MARK: - Kindness Elements
    
    private let kindnessElementsStackView = UIStackView(axis: .vertical)
    private let kindnessLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14)
    )
    
    private let emptyKindnessView = UIView(backgroundColor: .clear)
    private let kindnessProgressView = UIProgressView(
        tintColor: .darkRose,
        trackTintColor: .darkRose,
        cornerRadius: 12
    )
    
    private let emptyKindnessProgressView = UIView(backgroundColor: .clear)
    private let kindnessProgressLabel = UILabel(
        color: .fadingRose,
        font: UIFont(name: K.fontLato400, size: 13)
    )
    
    // MARK: - Mind Elements
    
    private let mindElementsStackView = UIStackView(axis: .vertical)
    private let mindLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato500, size: 14)
    )
    
    private let emptyMindView = UIView(backgroundColor: .clear)
    private let mindProgressView = UIProgressView(
        tintColor: .darkRose,
        trackTintColor: .darkRose,
        cornerRadius: 12
    )
    
    private let emptyMindProgressView = UIView(backgroundColor: .clear)
    private let mindProgressLabel = UILabel(
        color: .fadingRose,
        font: UIFont(name: K.fontLato400, size: 13)
    )
    
    // MARK: - Zodiac History Stack View
    
    private let zodiacHistoryStackView = UIStackView(
        axis: .vertical,
        spacing: 36
    )
    
    // MARK: - Description Stack View
    
    private let descriptionStackView = UIStackView(
        axis: .vertical,
        spacing: 12
    )
    
    private let descriptionLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato600, size: 18),
        alignment: .center
    )
    
    private let descriptionTextView = UITextView(
        text: K.descriptionText,
        textColor: .jet,
        font: UIFont(name: K.fontLato400, size: 14)
    )
    
    // MARK: - Astrology Stack View
    
    private let astrologyStackView = UIStackView(
        axis: .vertical,
        spacing: 12
    )
    
    private let astrologyLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato600, size: 18),
        alignment: .center
    )
    
    private let astrologyTextView = UITextView(
        text: K.astrologyText,
        textColor: .jet,
        font: UIFont(name: K.fontLato400, size: 14)
    )
    
    // MARK: - Meaning Of Name Stack View
    
    private let meaningOfNameStackView = UIStackView(
        axis: .vertical,
        spacing: 12
    )
    
    private let meaningOfNameLabel = UILabel(
        color: .dustyRose,
        font: UIFont(name: K.fontLato600, size: 18),
        alignment: .center
    )
    
    private let meaningOfNameTextView = UITextView(
        text: K.meaningOfNameText,
        textColor: .jet,
        font: UIFont(name: K.fontLato400, size: 14)
    )
    
    // MARK: - Duck, Star, Bears Images View
    
    let duckImageView = UIImageView(image: .duck)
    let starImageView = UIImageView(image: .stars)
    let bearsImageView = UIImageView(image: .bears)
    
    // MARK: - Private Properties
    
    private var person: Person?
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupConstraints()
        configureUI()
    }
    
    // MARK: - Setup Views
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(contentView)
        
        contentView.addSubview(scrollView)
        scrollView.addSubview(backgroundContentView)
        
        setupHeaderStackView()
        setupFullNameStackView()
        setupZodiacMainStackView()
        setupZodiacLeftStackView()
        setupZodiacPersonImageView()
        setupZodiacRightStackView()
        setupCharacterTraitsStackView()
        setupTraitsElementsStackView()
        setupluckElementsStackView()
        setupKindnessElementsStackView()
        setupMindElementsStackView()
        setupZodiacHistoryStackView()
        setupDescriptionStackView()
        setupAstrologyStackView()
        setupMeaningOfNameStackView()
        setupDuckImageView()
        setupStarImageView()
        setupBearsImageView()
        
        let zodiac = Zodiac(sign: .aries)
        person = Person(name: "Владислав", patronymic: "Витальевич", surname: "", zodiac: zodiac)
        
        heartButton.addTarget(self, action: #selector(heartButtonPressed), for: .touchUpInside)
        closeButton.addTarget(self, action: #selector(closeButtonPressed), for: .touchUpInside)
    }
    
    private func setupHeaderStackView() {
        backgroundContentView.addSubview(headerStackView)
        headerStackView.addArrangedSubview(heartButton)
        headerStackView.addArrangedSubview(nameLabel)
        headerStackView.addArrangedSubview(closeButton)
    }
    
    private func setupFullNameStackView() {
        backgroundContentView.addSubview(fullNameStackView)
        fullNameStackView.addArrangedSubview(namiImageView)
        fullNameStackView.addArrangedSubview(fullNameView)
        fullNameView.addSubview(fullNameLabel)
    }
    
    private func setupZodiacMainStackView() {
        backgroundContentView.addSubview(zodiacMainStackView)
    }
    
    private func setupZodiacLeftStackView() {
        zodiacMainStackView.addArrangedSubview(zodiacLeftInfoStackView)
        zodiacLeftInfoStackView.addArrangedSubview(zodiacSignStackView)
        zodiacSignStackView.addArrangedSubview(zodiacSignLabel)
        zodiacSignStackView.addArrangedSubview(zodiacSignNameLabel)
        
        zodiacLeftInfoStackView.addArrangedSubview(zodiacElementStackView)
        zodiacElementStackView.addArrangedSubview(zodiacElementLabel)
        zodiacElementStackView.addArrangedSubview(zodiacElementNameLabel)
        
        zodiacLeftInfoStackView.addArrangedSubview(zodiacStoneStackView)
        zodiacStoneStackView.addArrangedSubview(zodiacStoneLabel)
        zodiacStoneStackView.addArrangedSubview(zodiacStoneNameLabel)
    }
    
    private func setupZodiacPersonImageView() {
        zodiacMainStackView.addArrangedSubview(personImageView)
    }
    
    private func setupZodiacRightStackView() {
        zodiacMainStackView.addArrangedSubview(zodiacRightInfoStackView)
        
        zodiacRightInfoStackView.addArrangedSubview(zodiacAscendantStackView)
        zodiacAscendantStackView.addArrangedSubview(zodiacAscendantLabel)
        zodiacAscendantStackView.addArrangedSubview(zodiacAscendantNameLabel)
        
        zodiacRightInfoStackView.addArrangedSubview(zodiacColorStackView)
        zodiacColorStackView.addArrangedSubview(zodiacColorLabel)
        zodiacColorStackView.addArrangedSubview(zodiacColorNameLabel)
        
        zodiacRightInfoStackView.addArrangedSubview(zodiacAbodeStackView)
        zodiacAbodeStackView.addArrangedSubview(zodiacAbodeLabel)
        zodiacAbodeStackView.addArrangedSubview(zodiacAbodeNameLabel)
    }
    
    private func setupCharacterTraitsStackView() {
        backgroundContentView.addSubview(characterTraitsStackView)
        characterTraitsStackView.addArrangedSubview(characterTraitsLabel)
    }
    
    private func setupTraitsElementsStackView() {
        characterTraitsStackView.addArrangedSubview(traitsElementsStackView)
    }
    
    private func setupluckElementsStackView() {
        traitsElementsStackView.addArrangedSubview(luckElementsStackView)
        luckElementsStackView.addArrangedSubview(luckLabel)
        luckElementsStackView.addArrangedSubview(emptyLuckView)
        luckElementsStackView.addArrangedSubview(luckProgressView)
        luckElementsStackView.addArrangedSubview(emptyLuckProgressView)
        luckElementsStackView.addArrangedSubview(luckProgressLabel)
    }
    
    private func setupKindnessElementsStackView() {
        traitsElementsStackView.addArrangedSubview(kindnessElementsStackView)
        kindnessElementsStackView.addArrangedSubview(kindnessLabel)
        kindnessElementsStackView.addArrangedSubview(emptyKindnessView)
        kindnessElementsStackView.addArrangedSubview(kindnessProgressView)
        kindnessElementsStackView.addArrangedSubview(emptyKindnessProgressView)
        kindnessElementsStackView.addArrangedSubview(kindnessProgressLabel)
    }
    
    private func setupMindElementsStackView() {
        traitsElementsStackView.addArrangedSubview(mindElementsStackView)
        mindElementsStackView.addArrangedSubview(mindLabel)
        mindElementsStackView.addArrangedSubview(emptyMindView)
        mindElementsStackView.addArrangedSubview(mindProgressView)
        mindElementsStackView.addArrangedSubview(emptyMindProgressView)
        mindElementsStackView.addArrangedSubview(mindProgressLabel)
    }
    
    private func setupZodiacHistoryStackView() {
        backgroundContentView.addSubview(zodiacHistoryStackView)
    }
    
    private func setupDuckImageView() {
        backgroundContentView.addSubview(duckImageView)
    }
    
    private func setupStarImageView() {
        backgroundContentView.addSubview(starImageView)
    }
    
    private func setupBearsImageView() {
        backgroundContentView.addSubview(bearsImageView)
    }
    
    private func setupDescriptionStackView() {
        zodiacHistoryStackView.addArrangedSubview(descriptionStackView)
        descriptionStackView.addArrangedSubview(descriptionLabel)
        descriptionStackView.addArrangedSubview(descriptionTextView)
    }
    
    private func setupAstrologyStackView() {
        zodiacHistoryStackView.addArrangedSubview(astrologyStackView)
        astrologyStackView.addArrangedSubview(astrologyLabel)
        astrologyStackView.addArrangedSubview(astrologyTextView)
    }
    
    private func setupMeaningOfNameStackView() {
        zodiacHistoryStackView.addArrangedSubview(meaningOfNameStackView)
        meaningOfNameStackView.addArrangedSubview(meaningOfNameLabel)
        meaningOfNameStackView.addArrangedSubview(meaningOfNameTextView)
    }
}

extension MainViewController {
    
    // MARK: - Configure UI
    
    private func configureUI() {
        configureContentView()
        configureScrollView()
        configureNameLabel()
        configureFullNameLabel()
        
        configureZodiacSignLabels()
        configureZodiacElementLabels()
        configureZodiacStoneLabels()
        configureZodiacAscendantLabels()
        configureZodiacColorLabels()
        configureZodiacAbodeLabels()
        
        configureCharacterTraitsLabel()
        configureLuckLabel()
        configureKindnessLabel()
        configureMindLabel()
        
        configureLuckProgress()
        configureKindnessProgress()
        configureMindProgress()
        
        configureDescriptionLabel()
        configureMeaningOfNameLabel()
        configureAstrologyLabel()
    }
    
    private func configureContentView() {
        contentView.makeShadow(color: UIColor(resource: .peach))
    }
    
    private func configureScrollView() {
        scrollView.bounces = false
        scrollView.delaysContentTouches = false
    }
    
    private func configureNameLabel() {
        guard let person else { return }
        
        nameLabel.text = person.name
    }
    
    private func configureFullNameLabel() {
        guard let person else { return }
        
        let patronymic = person.patronymic ?? ""
        fullNameLabel.text = person.surname + " " + person.name + " " + patronymic
    }
    
    private func configureZodiacSignLabels() {
        guard let person else { return }
        
        zodiacSignLabel.text = K.zodiacSign
        zodiacSignNameLabel.text = person.zodiac.zodiacName
    }
    
    private func configureZodiacElementLabels() {
        guard let person else { return }
        
        zodiacElementLabel.text = K.zodiacElement
        zodiacElementNameLabel.text = person.zodiac.element
    }
    
    private func configureZodiacStoneLabels() {
        guard let person else { return }
        
        zodiacStoneLabel.text = K.zodiacStone
        zodiacStoneNameLabel.text = person.zodiac.stone
    }
    
    private func configureZodiacAscendantLabels() {
        guard let person else { return }
        
        zodiacAscendantLabel.text = K.zodiacAscendant
        zodiacAscendantNameLabel.text = person.zodiac.ascendant
    }
    
    private func configureZodiacColorLabels() {
        guard let person else { return }
        
        zodiacColorLabel.text = K.zodiacColor
        zodiacColorNameLabel.text = person.zodiac.color
    }
    
    private func configureZodiacAbodeLabels() {
        guard let person else { return }
        
        zodiacAbodeLabel.text = K.zodiacAbode
        zodiacAbodeNameLabel.text = person.zodiac.abode
    }
    
    private func configureCharacterTraitsLabel() {
        characterTraitsLabel.text = K.characterTraits
    }
    
    private func configureLuckLabel() {
        luckLabel.text = K.luckTitle
    }
    
    private func configureKindnessLabel() {
        kindnessLabel.text = K.kindnessTitle
    }
    
    private func configureMindLabel() {
        mindLabel.text = K.mindTitle
    }
    
    private func configureLuckProgress() {
        guard let person else { return }
        
        let maxValue: Float = 10.0
        let progressValue = Float(person.zodiac.luck)
        
        luckProgressView.progress = progressValue / maxValue
        
        let roundedMaxValue = String(format: "%.0f", maxValue)
        let roundedProgressValue = String(format: "%.0f", progressValue)
        luckProgressLabel.text = "\(roundedProgressValue) / \(roundedMaxValue)"
    }
    
    private func configureKindnessProgress() {
        guard let person else { return }
        
        let maxValue: Float = 10.0
        let progressValue = Float(person.zodiac.kindness)
        
        kindnessProgressView.progress = progressValue / maxValue
        
        let roundedMaxValue = String(format: "%.0f", maxValue)
        let roundedProgressValue = String(format: "%.0f", progressValue)
        kindnessProgressLabel.text = "\(roundedProgressValue) / \(roundedMaxValue)"
    }
    
    private func configureMindProgress() {
        guard let person else { return }
        
        let maxValue: Float = 10.0
        let progressValue = Float(person.zodiac.mind)
        
        mindProgressView.progress = progressValue / maxValue
        
        let roundedMaxValue = String(format: "%.0f", maxValue)
        let roundedProgressValue = String(format: "%.0f", progressValue)
        mindProgressLabel.text = "\(roundedProgressValue) / \(roundedMaxValue)"
    }
    
    private func configureDescriptionLabel() {
        descriptionLabel.text = K.descriptionTitle
    }
    
    private func configureAstrologyLabel() {
        astrologyLabel.text = K.astrologyTitle
    }
    
    private func configureMeaningOfNameLabel() {
        meaningOfNameLabel.text = K.meaningOfNameTitle
    }
}

extension MainViewController {
    
    // MARK: - Setup Constraints
    
    private func setupConstraints() {
        setupContainerConstraints()
        setupHeaderStackViewConstraints()
        setupHeartButtonConstraints()
        setupCloseButtonConstraints()
        setupFullNameStackViewConstraints()
        setupNamiImageViewConstraints()
        setupFullNameLabelConstraints()
        setupZodiacInfoStackViewConstraints()
        setupPersonImageViewConstraints()
        setupCharacterTraitsStackViewConstraints()
        setupEmptyLuckViewConstraints()
        setupLuckProgressViewConstraints()
        setupEmptyLuckProgressViewConstraints()
        setupEmptyKindnessViewConstraints()
        setupKindnessProgressViewConstraints()
        setupEmptyKindnessProgressViewConstraints()
        setupEmptyMindViewConstraints()
        setupMindProgressViewConstraints()
        setupEmptyMindProgressViewConstraints()
        setupZodiacHistoryStackViewConstraints()
        setupDuckImageConstraints()
        setupStarImageConstraints()
        setupBearsImageConstraints()
    }
    
    private func setupContainerConstraints() {
        contentView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(10)
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        backgroundContentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(contentView)
        }
    }
    
    private func setupHeaderStackViewConstraints() {
        headerStackView.snp.makeConstraints { make in
            make.top.equalTo(backgroundContentView).inset(20)
            make.leading.trailing.equalTo(backgroundContentView).inset(20)
        }
    }
    
    private func setupHeartButtonConstraints() {
        heartButton.snp.makeConstraints { make in
            make.width.height.equalTo(25).priority(.low)
        }
    }
    
    private func setupCloseButtonConstraints() {
        closeButton.snp.makeConstraints { make in
            make.width.height.equalTo(20).priority(.low)
        }
    }
    
    private func setupFullNameStackViewConstraints() {
        fullNameStackView.snp.makeConstraints { make in
            make.top.equalTo(headerStackView.snp.bottom).offset(7)
            make.leading.trailing.equalTo(backgroundContentView).inset(30)
        }
    }
    
    private func setupNamiImageViewConstraints() {
        namiImageView.snp.makeConstraints { make in
            make.width.equalTo(86).priority(.low)
            make.height.equalTo(6.5)
        }
    }
    
    private func setupFullNameLabelConstraints() {
        fullNameLabel.snp.makeConstraints { make in
            make.leading.trailing.equalTo(fullNameView).inset(10)
            make.top.bottom.equalTo(fullNameView).inset(10)
        }
    }
    
    private func setupZodiacInfoStackViewConstraints() {
        zodiacMainStackView.snp.makeConstraints { make in
            make.top.equalTo(fullNameView.snp.bottom).offset(37)
            make.leading.trailing.equalTo(backgroundContentView).inset(28)
        }
    }
    
    private func setupPersonImageViewConstraints() {
        personImageView.snp.makeConstraints { make in
            make.width.equalTo(145).priority(.low)
            make.height.equalTo(131)
        }
    }
    
    private func setupCharacterTraitsStackViewConstraints() {
        characterTraitsStackView.snp.makeConstraints { make in
            make.top.equalTo(zodiacMainStackView.snp.bottom).offset(48)
            make.leading.trailing.equalTo(backgroundContentView).inset(22)
        }
    }
    
    private func setupEmptyLuckViewConstraints() {
        emptyLuckView.snp.makeConstraints { make in
            make.height.equalTo(8)
        }
    }
    
    private func setupLuckProgressViewConstraints() {
        luckProgressView.snp.makeConstraints { make in
            make.width.equalTo(80).priority(.low)
            make.height.equalTo(5)
        }
    }
    
    private func setupEmptyLuckProgressViewConstraints() {
        emptyLuckProgressView.snp.makeConstraints { make in
            make.height.equalTo(4)
        }
    }
    
    private func setupEmptyKindnessViewConstraints() {
        emptyKindnessView.snp.makeConstraints { make in
            make.height.equalTo(8)
        }
    }
    
    private func setupKindnessProgressViewConstraints() {
        kindnessProgressView.snp.makeConstraints { make in
            make.width.equalTo(80).priority(.low)
            make.height.equalTo(5)
        }
    }
    
    private func setupEmptyKindnessProgressViewConstraints() {
        emptyKindnessProgressView.snp.makeConstraints { make in
            make.height.equalTo(4)
        }
    }
    
    private func setupEmptyMindViewConstraints() {
        emptyMindView.snp.makeConstraints { make in
            make.height.equalTo(8)
        }
    }
    
    private func setupMindProgressViewConstraints() {
        mindProgressView.snp.makeConstraints { make in
            make.width.equalTo(80).priority(.low)
            make.height.equalTo(5)
        }
    }
    
    private func setupEmptyMindProgressViewConstraints() {
        emptyMindProgressView.snp.makeConstraints { make in
            make.height.equalTo(4)
        }
    }
    
    private func setupZodiacHistoryStackViewConstraints() {
        zodiacHistoryStackView.snp.makeConstraints { make in
            make.top.equalTo(characterTraitsStackView.snp.bottom).offset(36)
            make.leading.trailing.equalTo(backgroundContentView).inset(25)
            make.bottom.equalTo(backgroundContentView).offset(-48)
        }
    }
    
    private func setupDuckImageConstraints() {
        duckImageView.snp.makeConstraints { make in
            make.width.equalTo(132)
            make.height.equalTo(129.47)
            make.leading.equalTo(contentView)
            make.bottom.equalTo(astrologyTextView.snp.top).offset(10)
        }
    }
    
    private func setupStarImageConstraints() {
        starImageView.snp.makeConstraints { make in
            make.width.height.equalTo(168)
            make.trailing.equalTo(contentView)
            make.bottom.equalTo(meaningOfNameTextView.snp.top).offset(13)
        }
    }
    
    private func setupBearsImageConstraints() {
        bearsImageView.snp.makeConstraints { make in
            make.width.equalTo(131)
            make.height.equalTo(148.45)
            make.leading.equalTo(contentView)
            make.bottom.equalTo(backgroundContentView).offset(10)
        }
    }
}

extension MainViewController {
    
    // MARK: - Actions
    
    @objc private func heartButtonPressed(_ sender: UIButton) {
        print("press heart")
    }
    
    @objc private func closeButtonPressed(_ sender: UIButton) {
        print("press close")
    }
}
