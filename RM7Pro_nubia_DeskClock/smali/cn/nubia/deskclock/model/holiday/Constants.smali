.class public Lcn/nubia/deskclock/model/holiday/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static ALL_DAY_TIME_MILLIS:J

.field public static final WeekendOnWorkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcn/nubia/deskclock/model/holiday/Constants;->ALL_DAY_TIME_MILLIS:J

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/deskclock/model/holiday/Constants;->WeekendOnWorkList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
