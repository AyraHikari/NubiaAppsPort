.class public Lcom/zte/statistics/sdk/comm/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field public static final sdfyyyy_MM_dd:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/DateUtil;->sdfyyyy_MM_dd:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDate_yyyy_MM_dd()Ljava/lang/String;
    .locals 2

    .line 14
    sget-object v0, Lcom/zte/statistics/sdk/comm/DateUtil;->sdfyyyy_MM_dd:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
