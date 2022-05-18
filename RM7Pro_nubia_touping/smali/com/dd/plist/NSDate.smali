.class public Lcom/dd/plist/NSDate;
.super Lcom/dd/plist/NSObject;
.source "SourceFile"


# static fields
.field private static final EPOCH:J = 0xe3c7a73400L

.field private static final sdfDefault:Ljava/text/SimpleDateFormat;

.field private static final sdfGnuStep:Ljava/text/SimpleDateFormat;


# instance fields
.field private date:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dd/plist/NSDate;->sdfDefault:Ljava/text/SimpleDateFormat;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dd/plist/NSDate;->sdfGnuStep:Ljava/text/SimpleDateFormat;

    .line 95
    sget-object v0, Lcom/dd/plist/NSDate;->sdfDefault:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    sget-object v0, Lcom/dd/plist/NSDate;->sdfGnuStep:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/dd/plist/NSDate;->parseDateString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Date cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    .line 92
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/dd/plist/NSDate;-><init>([BII)V

    .line 56
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 8

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Date;

    const-wide v2, 0xe3c7a73400L

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {p1, p2, p3}, Lcom/dd/plist/BinaryPropertyListParser;->parseDouble([BII)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    .line 68
    return-void
.end method

.method private static declared-synchronized makeDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    const-class v1, Lcom/dd/plist/NSDate;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dd/plist/NSDate;->sdfDefault:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized makeDateStringGnuStep(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    const-class v1, Lcom/dd/plist/NSDate;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dd/plist/NSDate;->sdfGnuStep:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized parseDateString(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .prologue
    .line 110
    const-class v1, Lcom/dd/plist/NSDate;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dd/plist/NSDate;->sdfDefault:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 112
    :goto_0
    monitor-exit v1

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :try_start_1
    sget-object v0, Lcom/dd/plist/NSDate;->sdfGnuStep:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clone()Lcom/dd/plist/NSDate;
    .locals 2

    .prologue
    .line 160
    new-instance v1, Lcom/dd/plist/NSDate;

    invoke-virtual {p0}, Lcom/dd/plist/NSDate;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-direct {v1, v0}, Lcom/dd/plist/NSDate;-><init>(Ljava/util/Date;)V

    return-object v1
.end method

.method public bridge synthetic clone()Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/dd/plist/NSDate;->clone()Lcom/dd/plist/NSDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/dd/plist/NSDate;->clone()Lcom/dd/plist/NSDate;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    check-cast p1, Lcom/dd/plist/NSDate;

    invoke-virtual {p1}, Lcom/dd/plist/NSDate;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    return v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .locals 2

    .prologue
    const/16 v1, 0x22

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDate;->indent(Ljava/lang/StringBuilder;I)V

    .line 191
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    invoke-static {v0}, Lcom/dd/plist/NSDate;->makeDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDate;->indent(Ljava/lang/StringBuilder;I)V

    .line 199
    const-string v0, "<*D"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    invoke-static {v0}, Lcom/dd/plist/NSDate;->makeDateStringGnuStep(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    return-void
.end method

.method public toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 4

    .prologue
    .line 173
    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 174
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v2, 0xe3c7a73400L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeDouble(D)V

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDate;->indent(Ljava/lang/StringBuilder;I)V

    .line 166
    const-string v0, "<date>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v0, p0, Lcom/dd/plist/NSDate;->date:Ljava/util/Date;

    invoke-static {v0}, Lcom/dd/plist/NSDate;->makeDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, "</date>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    return-void
.end method
