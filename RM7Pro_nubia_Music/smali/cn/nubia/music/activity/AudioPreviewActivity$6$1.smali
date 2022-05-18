.class Lcn/nubia/music/activity/AudioPreviewActivity$6$1;
.super Ljava/lang/Object;
.source "AudioPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/AudioPreviewActivity$6;->a(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AudioPreviewActivity$6;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/AudioPreviewActivity$6;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6$1;->a:Lcn/nubia/music/activity/AudioPreviewActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6$1;->a:Lcn/nubia/music/activity/AudioPreviewActivity$6;

    iget-object v0, v0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$300(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    .line 442
    return-void
.end method
