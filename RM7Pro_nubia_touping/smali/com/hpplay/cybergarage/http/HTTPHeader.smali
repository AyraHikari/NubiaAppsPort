.class public Lcom/hpplay/cybergarage/http/HTTPHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static MAX_LENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Cyber-HTTPHeader"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x400

    sput v0, Lcom/hpplay/cybergarage/http/HTTPHeader;->MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 42
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 43
    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 46
    if-ltz v0, :cond_0

    .line 48
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 49
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v0, v5, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([BII)V

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/hpplay/cybergarage/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static final getIntegerValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 130
    :try_start_0
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 132
    :goto_0
    return v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getIntegerValue([BLjava/lang/String;)I
    .locals 1

    .prologue
    .line 138
    :try_start_0
    invoke-static {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 140
    :goto_0
    return v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getValue(Ljava/io/LineNumberReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 87
    :try_start_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 89
    new-instance v2, Lcom/hpplay/cybergarage/http/HTTPHeader;

    invoke-direct {v2, v0}, Lcom/hpplay/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/http/HTTPHeader;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :goto_1
    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v1, "Cyber-HTTPHeader"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    const-string v0, ""

    goto :goto_1

    .line 106
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static final getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/hpplay/cybergarage/http/HTTPHeader;->MAX_LENGTH:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;I)V

    .line 114
    invoke-static {v1, p1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue(Ljava/io/LineNumberReader;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v1, "Cyber-HTTPHeader"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    const-string v0, " "

    goto :goto_0
.end method

.method public static final getValue([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, p1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const-string v0, " "

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPHeader;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/cybergarage/http/HTTPHeader;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPHeader;->name:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/hpplay/cybergarage/http/HTTPHeader;->value:Ljava/lang/String;

    .line 64
    return-void
.end method
