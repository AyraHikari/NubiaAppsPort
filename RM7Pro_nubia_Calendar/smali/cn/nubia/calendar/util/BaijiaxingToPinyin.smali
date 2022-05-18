.class public Lcn/nubia/calendar/util/BaijiaxingToPinyin;
.super Ljava/lang/Object;
.source "BaijiaxingToPinyin.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaijiaxingToPinyin"

.field private static final mBaiJiaXingToPinYin:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcn/nubia/calendar/util/BaijiaxingToPinyin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->mBaiJiaXingToPinYin:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->init()V

    .line 127
    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "xingshi"    # Ljava/lang/String;
    .param p1, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->mBaiJiaXingToPinYin:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->mBaiJiaXingToPinYin:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    return-void
.end method

.method public static getInstance()Lcn/nubia/calendar/util/BaijiaxingToPinyin;
    .locals 2

    .prologue
    .line 116
    const-class v1, Lcn/nubia/calendar/util/BaijiaxingToPinyin;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->sInstance:Lcn/nubia/calendar/util/BaijiaxingToPinyin;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->sInstance:Lcn/nubia/calendar/util/BaijiaxingToPinyin;

    monitor-exit v1

    .line 121
    :goto_0
    return-object v0

    .line 120
    :cond_0
    new-instance v0, Lcn/nubia/calendar/util/BaijiaxingToPinyin;

    invoke-direct {v0}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;-><init>()V

    sput-object v0, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->sInstance:Lcn/nubia/calendar/util/BaijiaxingToPinyin;

    .line 121
    sget-object v0, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->sInstance:Lcn/nubia/calendar/util/BaijiaxingToPinyin;

    monitor-exit v1

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static init()V
    .locals 2

    .prologue
    .line 18
    const/16 v0, 0x6c88

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHEN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const/16 v0, 0x4ec7

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QIU"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/16 v0, 0x533a

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OU"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/16 v0, 0x66fe

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZENG"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/16 v0, 0x53ec

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAO"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/16 v0, 0x4efb

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "REN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/16 v0, 0x534e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HUA"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/16 v0, 0x6734

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PIAO"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/16 v0, 0x6298

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHE"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/16 v0, 0x5584

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const v0, 0x9ed1

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HE"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const v0, 0x89e3

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XIE"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/16 v0, 0x7e41

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PO"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/16 v0, 0x7eaa

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/16 v0, 0x67e5

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZHA"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/16 v0, 0x4e50

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LE"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const v0, 0x8983

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QIN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const v0, 0x9561

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHAN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const v0, 0x8d32

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/16 v0, 0x76d6

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GE"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const v0, 0x90c7

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XUN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/16 v0, 0x79d8

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const v0, 0x891a

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHU"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/16 v0, 0x5f17

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FEI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const v0, 0x85c9

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const v0, 0x9002

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KUO"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/16 v0, 0x53e5

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GOU"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const v0, 0x961a

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KAN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/16 v0, 0x4e5c

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NIE"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/16 v0, 0x65cb

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XUAN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/16 v0, 0x772d

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/16 v0, 0x6d17

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XIAN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/16 v0, 0x71d5

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YAN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/16 v0, 0x5458

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YUN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/16 v0, 0x796d

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZHAI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/16 v0, 0x5398

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/16 v0, 0x5bbf

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SU"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/16 v0, 0x7f2a

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIAO"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/16 v0, 0x5355

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/16 v0, 0x5c09

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YU"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/16 v0, 0x543e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WU"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const v0, 0x94c5

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YAN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/16 v0, 0x53ef

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KE"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const v0, 0x8f66

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHE"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const v0, 0x8f9f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const v0, 0x957f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZHANG"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/16 v0, 0x4f1a

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KUAI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const v0, 0x8304

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JIA"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const v0, 0x8c37

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GU"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/16 v0, 0x5e7a

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YAO"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const v0, 0x8584

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BO"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/16 v0, 0x6641

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHAO"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/16 v0, 0x6d63

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/16 v0, 0x4e7e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QIAN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/16 v0, 0x7fdf

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZHAI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/16 v0, 0x51bc

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XIAN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const v0, 0x91cd

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHONG"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const v0, 0x827e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const v0, 0x85cf

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZANG"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/16 v0, 0x5352

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZU"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/16 v0, 0x4e58

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHENG"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/16 v0, 0x4f20

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHUAN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/16 v0, 0x4fde

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YU"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const v0, 0x81e7

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZANG"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/16 v0, 0x76db

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHENG"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const v0, 0x9697

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KUI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/16 v0, 0x4ef0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YANG"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const v0, 0x8398

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHEN"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const v0, 0x90e6

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LI"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/16 v0, 0x77bf

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QU"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/16 v0, 0x7afa

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZHU"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/16 v0, 0x7ea2

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HONG"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const v0, 0x90c4

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QIE"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/16 v0, 0x5415

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LV"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/16 v0, 0x5475

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HE"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected getPinYinFromBaiJiaXing(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "xingshin"    # Ljava/lang/String;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->mBaiJiaXingToPinYin:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected hasPinYin(Ljava/lang/String;)Z
    .locals 1
    .param p1, "xingshi"    # Ljava/lang/String;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->mBaiJiaXingToPinYin:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public printMap()V
    .locals 6

    .prologue
    .line 132
    sget-object v5, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->mBaiJiaXingToPinYin:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 133
    sget-object v5, Lcn/nubia/calendar/util/BaijiaxingToPinyin;->mBaiJiaXingToPinYin:Ljava/util/Map;

    .line 134
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 135
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 136
    .local v0, "index":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 138
    .local v2, "itor":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 139
    .local v4, "xingshi":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, "pinyin":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 144
    goto :goto_0

    .line 146
    .end local v0    # "index":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "itor":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "pinyin":Ljava/lang/String;
    .end local v4    # "xingshi":Ljava/lang/String;
    :cond_0
    return-void
.end method
