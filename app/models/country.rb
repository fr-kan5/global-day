class Country < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' }, { id: 2, name: 'Afghanistan' }, { id: 3, name: 'Albania' }, { id: 4, name: 'Algeria' }, { id: 5, name: 'Andorra' },
    { id: 6, name: 'Angola' }, { id: 7, name: 'Antigua and Barbuda' }, { id: 8, name: 'Argentina' }, { id: 9, name: 'Armenia' }, { id: 10, name: 'Australia' },
    { id: 11, name: 'Austria' }, { id: 12, name: 'Azerbaijan' }, { id: 13, name: 'Bahamas' }, { id: 14, name: 'Bahrain' }, { id: 15, name: 'Bangladesh' },
    { id: 16, name: 'Barbados' }, { id: 17, name: 'Belarus' }, { id: 18, name: 'Belgium' }, { id: 19, name: 'Belize' }, { id: 20, name: 'Benin' },
    { id: 21, name: 'Bhutan' }, { id: 22, name: 'Bolivia' }, { id: 23, name: 'Bosnia and Herzegovina' }, { id: 24, name: 'Botswana' }, { id: 25, name: 'Brazil' },
    { id: 26, name: 'Brunei' }, { id: 27, name: 'Bulgaria' }, { id: 28, name: 'Burkina Faso' }, { id: 29, name: 'Burundi' }, { id: 30, name: 'Côte d’Ivoire' },
    { id: 31, name: 'Cabo Verde' }, { id: 32, name: 'Cambodia' }, { id: 33, name: 'Cameroon' }, { id: 34, name: 'Canada' }, { id: 35, name: 'Central African Republic' },
    { id: 36, name: 'Chad' }, { id: 37, name: 'Chile' }, { id: 38, name: 'China' }, { id: 39, name: 'Colombia' }, { id: 40, name: 'Comoros' },
    { id: 41, name: 'Congo (Congo-Brazzaville)' }, { id: 42, name: 'Costa Rica' }, { id: 43, name: 'Croatia' }, { id: 44, name: 'Cuba' }, { id: 45, name: 'Cyprus' },
    { id: 46, name: 'Czechia (Czech Republic)' }, { id: 47, name: 'Democratic Republic of the Congo' }, { id: 48, name: 'Denmark' }, { id: 49, name: 'Djibouti' }, { id: 50, name: 'Dominica' },
    { id: 51, name: 'Dominican Republic' }, { id: 52, name: 'Ecuador' }, { id: 53, name: 'Egypt' }, { id: 54, name: 'El Salvador' }, { id: 55, name: 'Equatorial Guinea' },
    { id: 56, name: 'Eritrea' }, { id: 57, name: 'Estonia' }, { id: 58, name: 'Eswatini (fmr. "Swaziland")' }, { id: 59, name: 'Ethiopia' }, { id: 60, name: 'Fiji' },
    { id: 61, name: 'Finland' }, { id: 62, name: 'France' }, { id: 63, name: 'Gabon' }, { id: 64, name: 'Gambia' }, { id: 65, name: 'Georgia' },
    { id: 66, name: 'Germany' }, { id: 67, name: 'Ghana' }, { id: 68, name: 'Greece' }, { id: 69, name: 'Grenada' }, { id: 70, name: 'Guatemala' },
    { id: 71, name: 'Guinea' }, { id: 72, name: 'Guinea-Bissau' }, { id: 73, name: 'Guyana' }, { id: 74, name: 'Haiti' }, { id: 75, name: 'Holy See' },
    { id: 76, name: 'Honduras' }, { id: 77, name: 'Hungary' }, { id: 78, name: 'Iceland' }, { id: 79, name: 'India' }, { id: 80, name: 'Indonesia' },
    { id: 81, name: 'Iran' }, { id: 82, name: 'Iraq' }, { id: 83, name: 'Ireland' }, { id: 84, name: 'Israel' }, { id: 85, name: 'Italy' },
    { id: 86, name: 'Jamaica' }, { id: 87, name: 'Japan' }, { id: 88, name: 'Jordan' }, { id: 89, name: 'Kazakhstan' }, { id: 90, name: 'Kenya' },
    { id: 91, name: 'Kiribati' }, { id: 92, name: 'Kuwait' }, { id: 93, name: 'Kyrgyzstan' }, { id: 94, name: 'Laos' }, { id: 95, name: 'Latvia' },
    { id: 96, name: 'Lebanon' }, { id: 97, name: 'Lesotho' }, { id: 98, name: 'Liberia' }, { id: 99, name: 'Libya' }, { id: 100, name: 'Liechtenstein' },
    { id: 101, name: 'Lithuania' }, { id: 102, name: 'Luxembourg' }, { id: 103, name: 'Madagascar' }, { id: 104, name: 'Malawi' }, { id: 105, name: 'Malaysia' },
    { id: 106, name: 'Maldives' }, { id: 107, name: 'Mali' }, { id: 108, name: 'Malta' }, { id: 109, name: 'Marshall Islands' }, { id: 110, name: 'Mauritania' },
    { id: 111, name: 'Mauritius' }, { id: 112, name: 'Mexico' }, { id: 113, name: 'Micronesia' }, { id: 114, name: 'Moldova' }, { id: 115, name: 'Monaco' },
    { id: 116, name: 'Mongolia' }, { id: 117, name: 'Montenegro' }, { id: 118, name: 'Morocco' }, { id: 119, name: 'Mozambique' }, { id: 120, name: 'Myanmar (formerly Burma)' },
    { id: 121, name: 'Namibia' }, { id: 122, name: 'Nauru' }, { id: 123, name: 'Nepal' }, { id: 124, name: 'Netherlands' }, { id: 125, name: 'New Zealand' },
    { id: 126, name: 'Nicaragua' }, { id: 127, name: 'Niger' }, { id: 128, name: 'Nigeria' }, { id: 129, name: 'North Korea' }, { id: 130, name: 'North Macedonia' },
    { id: 131, name: 'Norway' }, { id: 132, name: 'Oman' }, { id: 133, name: 'Pakistan' }, { id: 134, name: 'Palau' }, { id: 135, name: 'Palestine State' },
    { id: 136, name: 'Panama' }, { id: 137, name: 'Papua New Guinea' }, { id: 138, name: 'Paraguay' }, { id: 139, name: 'Peru' }, { id: 140, name: 'Philippines' },
    { id: 141, name: 'Poland' }, { id: 142, name: 'Portugal' }, { id: 143, name: 'Qatar' }, { id: 144, name: 'Romania' }, { id: 145, name: 'Russia' },
    { id: 146, name: 'Rwanda' }, { id: 147, name: 'Saint Kitts and Nevis' }, { id: 148, name: 'Saint Lucia' }, { id: 149, name: 'Saint Vincent and the Grenadines' }, { id: 150, name: 'Samoa' },
    { id: 151, name: 'San Marino' }, { id: 152, name: 'Sao Tome and Principe' }, { id: 153, name: 'Saudi Arabia' }, { id: 154, name: 'Senegal' }, { id: 155, name: 'Serbia' },
    { id: 156, name: 'Seychelles' }, { id: 157, name: 'Sierra Leone' }, { id: 158, name: 'Singapore' }, { id: 159, name: 'Slovakia' }, { id: 160, name: 'Slovenia' },
    { id: 161, name: 'Solomon Islands' }, { id: 162, name: 'Somalia' }, { id: 163, name: 'South Africa' }, { id: 164, name: 'South Korea' }, { id: 165, name: 'South Sudan' },
    { id: 166, name: 'Spain' }, { id: 167, name: 'Sri Lanka' }, { id: 168, name: 'Sudan' }, { id: 169, name: 'Suriname' }, { id: 170, name: 'Sweden' },
    { id: 171, name: 'Switzerland' }, { id: 172, name: 'Syria' }, { id: 173, name: 'Tajikistan' }, { id: 174, name: 'Tanzania' }, { id: 175, name: 'Thailand' },
    { id: 176, name: 'Timor-Leste' }, { id: 177, name: 'Togo' }, { id: 178, name: 'Tonga' }, { id: 179, name: 'Trinidad and Tobago' }, { id: 180, name: 'Tunisia' },
    { id: 181, name: 'Turkey' }, { id: 182, name: 'Turkmenistan' }, { id: 183, name: 'Tuvalu' }, { id: 184, name: 'Uganda' }, { id: 185, name: 'Ukraine' },
    { id: 186, name: 'United Arab Emirates' }, { id: 187, name: 'United Kingdom' }, { id: 188, name: 'United States of America' }, { id: 189, name: 'Uruguay' }, { id: 190, name: 'Uzbekistan' },
    { id: 191, name: 'Vanuatu' }, { id: 192, name: 'Venezuela' }, { id: 193, name: 'Vietnam' }, { id: 194, name: 'Yemen' }, { id: 195, name: 'Zambia' },
    { id: 196, name: 'Zimbabwe' }
  ]
end
