.class Lcn/nubia/camera/extendedUI/f$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/extendedUI/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/extendedUI/f;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/extendedUI/f;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/f$a;->a:Lcn/nubia/camera/extendedUI/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/extendedUI/f;Lcn/nubia/camera/extendedUI/f$1;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/f$a;-><init>(Lcn/nubia/camera/extendedUI/f;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/f$a;->a:Lcn/nubia/camera/extendedUI/f;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/f;->b(Lcn/nubia/camera/extendedUI/f;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f$a;->a:Lcn/nubia/camera/extendedUI/f;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/f;->a(Lcn/nubia/camera/extendedUI/f;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    :goto_0
    return-void
.end method
