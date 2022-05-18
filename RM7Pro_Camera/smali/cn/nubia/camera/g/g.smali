.class public Lcn/nubia/camera/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcn/nubia/camera/aw/a;

.field private b:Lcn/nubia/camera/f/a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/aw/a;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcn/nubia/camera/g/g;->a:Lcn/nubia/camera/aw/a;

    .line 27
    new-instance v0, Lcn/nubia/camera/g/g$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/g/g$1;-><init>(Lcn/nubia/camera/g/g;)V

    iput-object v0, p0, Lcn/nubia/camera/g/g;->b:Lcn/nubia/camera/f/a;

    .line 19
    iput-object p1, p0, Lcn/nubia/camera/g/g;->a:Lcn/nubia/camera/aw/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/g/g;)Lcn/nubia/camera/aw/a;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/camera/g/g;->a:Lcn/nubia/camera/aw/a;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 24
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/g/g;->b:Lcn/nubia/camera/f/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/f/b;->a(Lcn/nubia/camera/f/c;)V

    return-void
.end method
