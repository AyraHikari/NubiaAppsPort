.class Lcn/nubia/calendar/util/NubiaTrackManager$SingleInstance;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/util/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lcn/nubia/calendar/util/NubiaTrackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcn/nubia/calendar/util/NubiaTrackManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/calendar/util/NubiaTrackManager;-><init>(Lcn/nubia/calendar/util/NubiaTrackManager$1;)V

    sput-object v0, Lcn/nubia/calendar/util/NubiaTrackManager$SingleInstance;->instance:Lcn/nubia/calendar/util/NubiaTrackManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
