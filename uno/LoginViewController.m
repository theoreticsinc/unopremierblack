//
//  LoginViewController.m
//  Unopremier
//
//  Created by Angelo Dizon on 3/20/15.
//  Copyright (c) 2015 Unlimited Network of Opportunities. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (nonatomic, strong) NSXMLParser *xmlParser;
@end

@implementation LoginViewController

@synthesize uname;
@synthesize pword;
@synthesize result;

@synthesize webData;
@synthesize nodeContent;
@synthesize wsResults;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)getMemberName {
    //GetMemberName
    NSString *soapFormat = [NSString stringWithFormat:@"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                  "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:unop=\"UNOPrime\">\n"
                  "<soapenv:Header/>\n"
                  "<soapenv:Body>\n"
                  "<unop:GetMemberName>\n"
                  "<unop:AccessCode>SW55KD58S2H4N48Q</unop:AccessCode>\n"
                  "<unop:MemberID>%@</unop:MemberID>\n"
                  "</unop:GetMemberName>\n"
                  "</soapenv:Body>\n"
                  "</soapenv:Envelope>\n", uname.text];
    
    NSURL *locationOfWebService = [NSURL URLWithString:@"http://services.uno1.biz/MobileService.asmx"];
    NSMutableURLRequest *theRequest = [[NSMutableURLRequest alloc]initWithURL:locationOfWebService];
    NSString *msgLength = [NSString stringWithFormat:@"%d",[soapFormat length]];
    [theRequest addValue:@"text/xml" forHTTPHeaderField:@"Content-Type"];
    [theRequest addValue:@"UNOPrime/GetMemberName" forHTTPHeaderField:@"SOAPAction"];
    [theRequest addValue:msgLength forHTTPHeaderField:@"Content-Length"];
    [theRequest setHTTPMethod:@"POST"];
    //the below encoding is used to send data over the net
    [theRequest setHTTPBody:[soapFormat dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSURLConnection *connect = [[NSURLConnection alloc]initWithRequest:theRequest delegate:self];
    if (connect) {
        webData = [[NSMutableData alloc]init];
        NSLog(@"Connection Establish");
    }
    else {
        NSLog(@"No Connection established");
    }
    wsResults.text = @"WELCOME ";
}

- (void)getWalletBalance {
    //GetWalletBalance
    NSString *soapFormat = [NSString stringWithFormat:@"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                            "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:unop=\"UNOPrime\">\n"
                            "<soapenv:Header/>\n"
                            "<soapenv:Body>\n"
                            "<unop:GetWalletBalance>\n"
                            "<unop:AccessCode>SW55KD58S2H4N48Q</unop:AccessCode>\n"
                            "<unop:MemberID>%@</unop:MemberID>\n"
                            "<unop:Password>%@</unop:Password>\n"
                            "</unop:GetWalletBalance>\n"
                            "</soapenv:Body>\n"
                            "</soapenv:Envelope>\n", uname.text, pword.text];
    
    NSURL *locationOfWebService = [NSURL URLWithString:@"http://services.uno1.biz/MobileService.asmx"];
    NSMutableURLRequest *theRequest = [[NSMutableURLRequest alloc]initWithURL:locationOfWebService];
    NSString *msgLength = [NSString stringWithFormat:@"%d",[soapFormat length]];
    [theRequest addValue:@"text/xml" forHTTPHeaderField:@"Content-Type"];
    [theRequest addValue:@"UNOPrime/GetWalletBalance" forHTTPHeaderField:@"SOAPAction"];
    [theRequest addValue:msgLength forHTTPHeaderField:@"Content-Length"];
    [theRequest setHTTPMethod:@"POST"];
    //the below encoding is used to send data over the net
    [theRequest setHTTPBody:[soapFormat dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSURLConnection *connect = [[NSURLConnection alloc]initWithRequest:theRequest delegate:self];
    if (connect) {
        webData = [[NSMutableData alloc]init];
        NSLog(@"Connection Establish");
    }
    else {
        NSLog(@"No Connection established");
    }
    
}

- (void)getIncomeReport {
    //GetIncomeReport
    NSString *soapFormat = [NSString stringWithFormat:@"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                            "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:unop=\"UNOPrime\">\n"
                            "<soapenv:Header/>\n"
                            "<soapenv:Body>\n"
                            "<unop:GetIncomeReport>\n"
                            "<unop:AccessCode>SW55KD58S2H4N48Q</unop:AccessCode>\n"
                            "<unop:MemberID>%@</unop:MemberID>\n"
                            "<unop:Password>%@</unop:Password>\n"
                            "</unop:GetIncomeReport>\n"
                            "</soapenv:Body>\n"
                            "</soapenv:Envelope>\n", uname.text, pword.text];
    
    NSURL *locationOfWebService = [NSURL URLWithString:@"http://services.uno1.biz/MobileService.asmx"];
    NSMutableURLRequest *theRequest = [[NSMutableURLRequest alloc]initWithURL:locationOfWebService];
    NSString *msgLength = [NSString stringWithFormat:@"%d",[soapFormat length]];
    [theRequest addValue:@"text/xml" forHTTPHeaderField:@"Content-Type"];
    //[theRequest addValue:@"UNOPrime/GetMemberName" forHTTPHeaderField:@"SOAPAction"];
    [theRequest addValue:@"UNOPrime/GetIncomeReport" forHTTPHeaderField:@"SOAPAction"];
    //[theRequest addValue:@"UNOPrime/Login" forHTTPHeaderField:@"SOAPAction"];
    [theRequest addValue:msgLength forHTTPHeaderField:@"Content-Length"];
    [theRequest setHTTPMethod:@"POST"];
    //the below encoding is used to send data over the net
    [theRequest setHTTPBody:[soapFormat dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSURLConnection *connect = [[NSURLConnection alloc]initWithRequest:theRequest delegate:self];
    if (connect) {
        webData = [[NSMutableData alloc]init];
        NSLog(@"Connection Establish");
    }
    else {
        NSLog(@"No Connection established");
    }
    
}

- (IBAction)loginButton:(id)sender {
    
    wsResults.text = @"";
    
    [self getMemberName];
    [self getIncomeReport];
    [self getWalletBalance];
    

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma - NSURLConnection delegate method
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [webData setLength: 0];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [webData appendData:data];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"ERROR with theConenction");
    //[connection release];
    //[webData release];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    
    NSLog(@"DONE. Received Bytes: %d", [webData length]);
    self.xmlParser = [[NSXMLParser alloc]initWithData:webData];
    [self.xmlParser setDelegate: self];
    //    [self.xmlParser setShouldProcessNamespaces:NO];
    //    [self.xmlParser setShouldReportNamespacePrefixes:NO];
    //    [self.xmlParser setShouldResolveExternalEntities:NO];
    [self.xmlParser parse];
    
}
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    NSLog(@"found character %@",string);
    string = [string substringFromIndex:4];
    string = [string stringByAppendingString:@"\n\n"];
    wsResults.text = [wsResults.text stringByAppendingString:string];
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    NSLog(@"elementName %@",elementName);
    if ([elementName isEqualToString:@"GetWalletBalanceResult"]) {
       // NSLog(@"node %@",self.finaldata);
        NSLog(@"GetWalletBalanceResult did End Element");
    }
    else if ([elementName isEqualToString:@"GetIncomeReportResult"]) {
        //NSLog(@"node %@",self.finaldata);
        //wsResults.text = self.finaldata;
        NSLog(@"GetIncomeReportResult did End Element");
    }
    else {
        //wsResults.text = @"Unsuccessful Connection";
    }
    //result.text = finaldata;
}

- (void)parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError{
    NSLog(@"ERROR WITH PARSER");
    
}
//36338034
//123456
@end
