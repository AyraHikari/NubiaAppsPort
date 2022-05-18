.class Lcn/nubia/video/list/ui/g$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/list/ui/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/g;


# direct methods
.method private constructor <init>(Lcn/nubia/video/list/ui/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/g$d;->a:Lcn/nubia/video/list/ui/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/list/ui/g;Lcn/nubia/video/list/ui/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/list/ui/g$d;-><init>(Lcn/nubia/video/list/ui/g;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/list/ui/g$d;->a:Lcn/nubia/video/list/ui/g;

    invoke-static {v0}, Lcn/nubia/video/list/ui/g;->X(Lcn/nubia/video/list/ui/g;)Lcn/nubia/video/commonui/app/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcn/nubia/video/list/ui/g$d;->a:Lcn/nubia/video/list/ui/g;

    invoke-static {v0}, Lcn/nubia/video/list/ui/g;->X(Lcn/nubia/video/list/ui/g;)Lcn/nubia/video/commonui/app/f;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcn/nubia/video/commonui/app/f;->x(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/list/ui/g$d;->a:Lcn/nubia/video/list/ui/g;

    invoke-static {p1}, Lcn/nubia/video/list/ui/g;->W(Lcn/nubia/video/list/ui/g;)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/list/ui/g$d;->a:Lcn/nubia/video/list/ui/g;

    iget-object p1, p1, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    invoke-virtual {p1}, Lb/a/b/c/b/f;->u()V

    :cond_2
    :goto_0
    return-void
.end method
