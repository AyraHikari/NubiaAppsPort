.class Lcn/nubia/gallery3d/util/Profile$WatchEntry;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/util/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchEntry"
.end annotation


# instance fields
.field cycleTime:I

.field holdingStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isHolding:Z

.field thread:Ljava/lang/Thread;

.field wakeTime:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/util/Profile$1;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/gallery3d/util/Profile$WatchEntry;-><init>()V

    return-void
.end method
