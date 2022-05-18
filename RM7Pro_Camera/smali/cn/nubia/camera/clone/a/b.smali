.class public Lcn/nubia/camera/clone/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcn/nubia/camera/clone/l;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/clone/l;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/nubia/camera/clone/a/b;->a:Lcn/nubia/camera/clone/l;

    .line 18
    iput-object v0, p0, Lcn/nubia/camera/clone/a/b;->b:Landroid/view/View;

    .line 21
    iput-object p1, p0, Lcn/nubia/camera/clone/a/b;->a:Lcn/nubia/camera/clone/l;

    return-void
.end method

.method private a()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcn/nubia/camera/clone/a/b;->a:Lcn/nubia/camera/clone/l;

    if-nez v0, :cond_0

    const-string v0, "CloneEditClickListener"

    const-string v1, "mContext is null."

    .line 34
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/clone/a/b;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/clone/l;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/nubia/camera/clone/a/b;->b:Landroid/view/View;

    .line 29
    invoke-direct {p0}, Lcn/nubia/camera/clone/a/b;->a()V

    return-void
.end method
