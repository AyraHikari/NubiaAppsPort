.class Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$SingleInstance;
.super Ljava/lang/Object;
.source "NubiaTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstance"
.end annotation


# static fields
.field static instance:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;-><init>(Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$1;)V

    sput-object v0, Lcn/nubia/gallery3d/trackclient/NubiaTrackManager$SingleInstance;->instance:Lcn/nubia/gallery3d/trackclient/NubiaTrackManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
