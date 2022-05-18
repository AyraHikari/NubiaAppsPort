.class Lcn/nubia/gallery3d/app/StateManager$StateEntry;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEntry"
.end annotation


# instance fields
.field public activityState:Lcn/nubia/gallery3d/app/ActivityState;

.field public data:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcn/nubia/gallery3d/app/ActivityState;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    .line 395
    iput-object p2, p0, Lcn/nubia/gallery3d/app/StateManager$StateEntry;->activityState:Lcn/nubia/gallery3d/app/ActivityState;

    return-void
.end method
