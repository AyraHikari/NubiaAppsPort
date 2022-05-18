.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;,
        Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$TokenizerException;
    }
.end annotation


# static fields
.field public static final COMMENT:I = 0x5

.field public static final EOF:I = 0x0

.field public static final EOL:I = 0x1

.field public static final IDENTIFIER:I = 0x3

.field public static final QUOTED_STRING:I = 0x4

.field public static final WHITESPACE:I = 0x2

.field private static delim:Ljava/lang/String;

.field private static quotes:Ljava/lang/String;


# instance fields
.field private current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

.field private delimiters:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private is:Ljava/io/PushbackInputStream;

.field private line:I

.field private multiline:I

.field private quoting:Z

.field private sb:Ljava/lang/StringBuffer;

.field private ungottenToken:Z

.field private wantClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, " \t\n;()\""

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->delim:Ljava/lang/String;

    .line 23
    const-string v0, "\""

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->quotes:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;-><init>(Ljava/io/InputStream;)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->wantClose:Z

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->filename:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 46
    :cond_0
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->is:Ljava/io/PushbackInputStream;

    .line 47
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->ungottenToken:Z

    .line 48
    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->multiline:I

    .line 49
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->quoting:Z

    .line 50
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->delim:Ljava/lang/String;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->delimiters:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$1;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->sb:Ljava/lang/StringBuffer;

    .line 53
    const-string v0, "<none>"

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->filename:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->line:I

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;-><init>(Ljava/io/InputStream;)V

    .line 59
    return-void
.end method

.method private _getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->get()Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    .line 270
    iget v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 273
    :cond_0
    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method private checkUnbalancedParens()V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->multiline:I

    if-lez v0, :cond_0

    .line 111
    const-string v0, "unbalanced parentheses"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 113
    :cond_0
    return-void
.end method

.method private getChar()I
    .locals 3

    .prologue
    const/16 v1, 0xa

    .line 68
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 69
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 70
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 71
    if-eq v0, v1, :cond_0

    .line 72
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_0
    move v0, v1

    .line 78
    :cond_1
    if-ne v0, v1, :cond_2

    .line 79
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->line:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->line:I

    .line 82
    :cond_2
    return v0
.end method

.method private remainingStrings()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 384
    move-object v0, v1

    .line 387
    :goto_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->get()Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v2

    .line 388
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->isString()Z

    move-result v3

    if-nez v3, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->unget()V

    .line 390
    if-nez v0, :cond_0

    .line 394
    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 397
    :cond_1
    if-nez v0, :cond_2

    .line 398
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 401
    :cond_2
    iget-object v2, v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private skipWhitespace()I
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getChar()I

    move-result v1

    .line 100
    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->multiline:I

    if-gtz v2, :cond_1

    .line 101
    :cond_0
    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->ungetChar(I)V

    .line 102
    return v0

    .line 105
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 106
    goto :goto_0
.end method

.method private ungetChar(I)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 88
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 89
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->line:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->line:I

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->wantClose:Z

    if-eqz v0, :cond_0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public exception(Ljava/lang/String;)Ljava/lang/Exception;
    .locals 3

    .prologue
    .line 451
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$TokenizerException;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->filename:Ljava/lang/String;

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->line:I

    invoke-direct {v0, v1, v2, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$TokenizerException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->close()V

    .line 467
    return-void
.end method

.method public get()Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, v0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->get(ZZ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method public get(ZZ)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;
    .locals 9

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 116
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->ungottenToken:Z

    if-eqz v1, :cond_3

    .line 117
    iput-boolean v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->ungottenToken:Z

    .line 118
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    iget v1, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 119
    if-eqz p1, :cond_3

    .line 120
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    .line 213
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    iget v1, v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 124
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    iget v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    if-ne v0, v8, :cond_1

    .line 125
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->line:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->line:I

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    goto :goto_0

    .line 131
    :cond_2
    if-eqz p2, :cond_3

    .line 132
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    goto :goto_0

    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->skipWhitespace()I

    move-result v1

    .line 138
    if-lez v1, :cond_4

    if-eqz p1, :cond_4

    .line 139
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    const/4 v2, 0x2

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-static {v1, v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;ILjava/lang/StringBuffer;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_4
    const/4 v1, 0x3

    .line 142
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 146
    :goto_1
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getChar()I

    move-result v2

    .line 147
    if-eq v2, v7, :cond_5

    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v7, :cond_18

    .line 148
    :cond_5
    if-ne v2, v7, :cond_8

    .line 149
    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->quoting:Z

    if-eqz v2, :cond_6

    .line 150
    const-string v0, "EOF in quoted string"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 153
    :cond_6
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 154
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-static {v1, v6, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;ILjava/lang/StringBuffer;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;ILjava/lang/StringBuffer;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_8
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_9

    if-ne v1, v3, :cond_b

    .line 161
    :cond_9
    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->ungetChar(I)V

    .line 162
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_a

    if-eq v1, v3, :cond_a

    .line 163
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->checkUnbalancedParens()V

    .line 164
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-static {v1, v6, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;ILjava/lang/StringBuffer;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    .line 166
    :cond_a
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;ILjava/lang/StringBuffer;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    :cond_b
    const/16 v4, 0x28

    if-ne v2, v4, :cond_c

    .line 171
    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->multiline:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->multiline:I

    .line 172
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->skipWhitespace()I

    goto :goto_1

    .line 173
    :cond_c
    const/16 v4, 0x29

    if-ne v2, v4, :cond_e

    .line 174
    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->multiline:I

    if-gtz v2, :cond_d

    .line 175
    const-string v0, "invalid release parenthesis"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 178
    :cond_d
    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->multiline:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->multiline:I

    .line 179
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->skipWhitespace()I

    goto/16 :goto_1

    .line 180
    :cond_e
    const/16 v4, 0x22

    if-ne v2, v4, :cond_10

    .line 181
    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->quoting:Z

    if-nez v2, :cond_f

    .line 182
    iput-boolean v8, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->quoting:Z

    .line 183
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->quotes:Ljava/lang/String;

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->delimiters:Ljava/lang/String;

    move v1, v3

    .line 184
    goto/16 :goto_1

    .line 186
    :cond_f
    iput-boolean v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->quoting:Z

    .line 187
    sget-object v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->delim:Ljava/lang/String;

    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->delimiters:Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->skipWhitespace()I

    goto/16 :goto_1

    .line 191
    :cond_10
    const/16 v4, 0xa

    if-ne v2, v4, :cond_11

    .line 192
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-static {v1, v8, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;ILjava/lang/StringBuffer;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :cond_11
    const/16 v4, 0x3b

    if-eq v2, v4, :cond_13

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 221
    :cond_12
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->sb:Ljava/lang/StringBuffer;

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 200
    :cond_13
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getChar()I

    move-result v2

    .line 201
    const/16 v4, 0xa

    if-eq v2, v4, :cond_14

    if-ne v2, v7, :cond_12

    .line 202
    :cond_14
    if-eqz p2, :cond_15

    .line 203
    invoke-direct {p0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->ungetChar(I)V

    .line 204
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;ILjava/lang/StringBuffer;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    .line 207
    :cond_15
    if-ne v2, v7, :cond_16

    if-eq v1, v3, :cond_16

    .line 208
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->checkUnbalancedParens()V

    .line 209
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-static {v1, v6, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;ILjava/lang/StringBuffer;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    .line 212
    :cond_16
    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->multiline:I

    if-gtz v2, :cond_17

    .line 213
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-static {v1, v8, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;ILjava/lang/StringBuffer;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    goto/16 :goto_0

    .line 216
    :cond_17
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->skipWhitespace()I

    .line 217
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    .line 225
    :cond_18
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_1b

    .line 226
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getChar()I

    move-result v2

    .line 227
    if-ne v2, v7, :cond_19

    .line 228
    const-string v0, "unterminated escape sequence"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 231
    :cond_19
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->sb:Ljava/lang/StringBuffer;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 236
    :cond_1a
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->sb:Ljava/lang/StringBuffer;

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 232
    :cond_1b
    iget-boolean v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->quoting:Z

    if-eqz v4, :cond_1a

    const/16 v4, 0xa

    if-ne v2, v4, :cond_1a

    .line 233
    const-string v0, "newline in quoted string"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public getAddress(I)Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 367
    const-string v0, "an address"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    :try_start_0
    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public getAddressBytes(I)[B
    .locals 3

    .prologue
    .line 357
    const-string v0, "an address"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v1

    .line 359
    if-nez v1, :cond_0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 362
    :cond_0
    return-object v1
.end method

.method public getBase64()[B
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getBase64(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getBase64(Z)[B
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->remainingStrings()Ljava/lang/String;

    move-result-object v0

    .line 407
    if-nez v0, :cond_2

    .line 408
    if-eqz p1, :cond_0

    .line 409
    const-string v0, "expected base64 encoded string"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 411
    :cond_0
    const/4 v0, 0x0

    .line 418
    :cond_1
    return-object v0

    .line 414
    :cond_2
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 415
    if-nez v0, :cond_1

    .line 416
    const-string v0, "invalid base64 encoding"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public getEOL()V
    .locals 3

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->get()Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    .line 378
    iget v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    if-eqz v0, :cond_0

    .line 379
    const-string v0, "expected EOL or EOF"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 381
    :cond_0
    return-void
.end method

.method public getHex()[B
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getHex(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getHex(Z)[B
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->remainingStrings()Ljava/lang/String;

    move-result-object v0

    .line 429
    if-nez v0, :cond_2

    .line 430
    if-eqz p1, :cond_0

    .line 431
    const-string v0, "expected hex encoded string"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 433
    :cond_0
    const/4 v0, 0x0

    .line 440
    :cond_1
    return-object v0

    .line 436
    :cond_2
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 437
    if-nez v0, :cond_1

    .line 438
    const-string v0, "invalid hex encoding"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    const-string v0, "an identifier"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 282
    const-string v0, "an integer"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    const-string v0, "expected an integer"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 287
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    const-string v0, "expected an integer"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public getName(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 2

    .prologue
    .line 342
    const-string v0, "a name"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    :try_start_0
    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "name.isAbsolute"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 349
    :cond_0
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->get()Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->isString()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const-string v0, "expected a string"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 264
    :cond_0
    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getTTL()J
    .locals 2

    .prologue
    .line 322
    const-string v0, "a TTL value"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    :try_start_0
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TTL;->parseTTL(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string v0, "expected a TTL value"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public getTTLLike()J
    .locals 2

    .prologue
    .line 332
    const-string v0, "a TTL-like value"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TTL;->parse(Ljava/lang/String;Z)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    const-string v0, "expected a TTL-like value"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public getUInt16()I
    .locals 4

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getLong()J

    move-result-wide v0

    .line 305
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 306
    long-to-int v0, v0

    return v0

    .line 308
    :cond_0
    const-string v0, "expected an 16 bit unsigned integer"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public getUInt32()J
    .locals 4

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getLong()J

    move-result-wide v0

    .line 296
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 297
    return-wide v0

    .line 299
    :cond_0
    const-string v0, "expected an 32 bit unsigned integer"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public getUInt8()I
    .locals 4

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getLong()J

    move-result-wide v0

    .line 314
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0xff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 315
    long-to-int v0, v0

    return v0

    .line 317
    :cond_0
    const-string v0, "expected an 8 bit unsigned integer"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public unget()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 248
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->ungottenToken:Z

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unget multiple tokens"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->current:Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;

    iget v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer$Token;->type:I

    if-ne v0, v1, :cond_1

    .line 252
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->line:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->line:I

    .line 255
    :cond_1
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->ungottenToken:Z

    .line 257
    return-void
.end method
