.class Lcn/nubia/music/ui/RepeatingImageButton$1;
.super Ljava/lang/Object;
.source "RepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/RepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/RepeatingImageButton;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/RepeatingImageButton;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcn/nubia/music/ui/RepeatingImageButton$1;->a:Lcn/nubia/music/ui/RepeatingImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcn/nubia/music/ui/RepeatingImageButton$1;->a:Lcn/nubia/music/ui/RepeatingImageButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/ui/RepeatingImageButton;->access$000(Lcn/nubia/music/ui/RepeatingImageButton;Z)V

    .line 115
    iget-object v0, p0, Lcn/nubia/music/ui/RepeatingImageButton$1;->a:Lcn/nubia/music/ui/RepeatingImageButton;

    invoke-virtual {v0}, Lcn/nubia/music/ui/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcn/nubia/music/ui/RepeatingImageButton$1;->a:Lcn/nubia/music/ui/RepeatingImageButton;

    iget-object v1, p0, Lcn/nubia/music/ui/RepeatingImageButton$1;->a:Lcn/nubia/music/ui/RepeatingImageButton;

    invoke-static {v1}, Lcn/nubia/music/ui/RepeatingImageButton;->access$100(Lcn/nubia/music/ui/RepeatingImageButton;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcn/nubia/music/ui/RepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    :cond_0
    return-void
.end method
