.class Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$SingleInstance;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;-><init>(Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$1;)V

    sput-object v0, Lcn/nubia/notepad/engine/statistic/NubiaTrackManager$SingleInstance;->instance:Lcn/nubia/notepad/engine/statistic/NubiaTrackManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
