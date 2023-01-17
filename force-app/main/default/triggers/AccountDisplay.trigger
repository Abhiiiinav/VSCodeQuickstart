trigger AccountDisplay on Account (before insert) {

    System.debug('Account display is called');
}