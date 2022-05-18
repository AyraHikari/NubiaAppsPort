.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public type:I

.field public value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    .line 489
    return-void
.end method

.method synthetic constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$1;)V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;ILjava/lang/StringBuffer;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;
    .locals 1

    .prologue
    .line 482
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method private set(ILjava/lang/StringBuffer;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;
    .locals 1

    .prologue
    .line 492
    if-gez p1, :cond_0

    .line 493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 495
    :cond_0
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    .line 496
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    .line 497
    return-object p0

    .line 496
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public isString()Z
    .locals 2

    .prologue
    .line 521
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    packed-switch v0, :pswitch_data_0

    .line 516
    const-string v0, "<unknown>"

    :goto_0
    return-object v0

    .line 504
    :pswitch_0
    const-string v0, "<eof>"

    goto :goto_0

    .line 506
    :pswitch_1
    const-string v0, "<eol>"

    goto :goto_0

    .line 508
    :pswitch_2
    const-string v0, "<whitespace>"

    goto :goto_0

    .line 510
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 512
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<quoted_string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 514
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<comment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
