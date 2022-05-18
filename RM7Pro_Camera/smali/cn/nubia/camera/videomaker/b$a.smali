.class Lcn/nubia/camera/videomaker/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/videomaker/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/videomaker/b;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcn/nubia/camera/videomaker/b$a;->a:Lcn/nubia/camera/videomaker/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/videomaker/b;Lcn/nubia/camera/videomaker/b$1;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/b$a;-><init>(Lcn/nubia/camera/videomaker/b;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 156
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/videomaker/b$a;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/b;->i(Lcn/nubia/camera/videomaker/b;)Lcn/nubia/camera/videomaker/b$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcn/nubia/camera/videomaker/b$a;->a:Lcn/nubia/camera/videomaker/b;

    invoke-static {p1}, Lcn/nubia/camera/videomaker/b;->i(Lcn/nubia/camera/videomaker/b;)Lcn/nubia/camera/videomaker/b$c;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/videomaker/b$c;->a()V

    :cond_1
    :goto_0
    return-void
.end method
