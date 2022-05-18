.class Lcn/nubia/collage/ui/b$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/b;


# direct methods
.method private constructor <init>(Lcn/nubia/collage/ui/b;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/b$b;->a:Lcn/nubia/collage/ui/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/collage/ui/b;Lcn/nubia/collage/ui/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/ui/b$b;-><init>(Lcn/nubia/collage/ui/b;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/ui/b$b;->a:Lcn/nubia/collage/ui/b;

    iget-object p1, p1, Lcn/nubia/collage/ui/b;->e:Lcn/nubia/collage/ui/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
