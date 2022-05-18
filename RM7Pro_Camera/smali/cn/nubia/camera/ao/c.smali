.class public Lcn/nubia/camera/ao/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ao/c$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/g/e;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/g/e;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/nubia/camera/ao/c;->a:Lcn/nubia/camera/ad/a;

    .line 32
    iput-object p2, p0, Lcn/nubia/camera/ao/c;->b:Lcn/nubia/camera/g/e;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ao/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/ao/c;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/ao/c;)Lcn/nubia/camera/g/e;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/ao/c;->b:Lcn/nubia/camera/g/e;

    return-object p0
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
    .locals 2

    .line 37
    new-instance v0, Lcn/nubia/camera/ao/c$a;

    iget-object v1, p0, Lcn/nubia/camera/ao/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcn/nubia/camera/ao/c$a;-><init>(Lcn/nubia/camera/ao/c;Lcn/nubia/camera/k/e;Lcn/nubia/b/d;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/nubia/camera/ao/c$a;->start()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 25
    check-cast p1, Lcn/nubia/camera/k/e;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/ao/c;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V

    return-void
.end method
