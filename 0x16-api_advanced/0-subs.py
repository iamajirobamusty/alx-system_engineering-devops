def number_of_subscribers(subereddit):
    """A function to get the total number of
        of subscribers of a subreddit API
        Args:
            subreddit: the subreddit querrying
        Return:
            The no of subscribers found
    """
    if subreddit is None or not isinstance(subreddit, str):
        return 0

    headers = {"User-Agent": "Google Chrome Version 81.0.4044.129"}
    req = requests.get(f'https://www.reddit.com/r/{subreddit}/about.json',headers=headers)
    return (req.json().get('data').get('subscribers'))
