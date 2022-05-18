.class public Lcn/nubia/camera/y/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/y/a$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;

.field private b:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;

.field private c:Lcn/nubia/camera/y/a$a;


# direct methods
.method public constructor <init>(Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcn/nubia/camera/y/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/y/a$a;-><init>(Lcn/nubia/camera/y/a;Lcn/nubia/camera/y/a$1;)V

    iput-object v0, p0, Lcn/nubia/camera/y/a;->c:Lcn/nubia/camera/y/a$a;

    .line 36
    iput-object p1, p0, Lcn/nubia/camera/y/a;->b:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;

    .line 37
    new-instance p1, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;

    iget-object v0, p0, Lcn/nubia/camera/y/a;->b:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;

    invoke-direct {p1, v0}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;-><init>(Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;)V

    iput-object p1, p0, Lcn/nubia/camera/y/a;->a:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/y/a;)Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/camera/y/a;->b:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/y/a;->a:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->stop()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/nubia/camera/y/a;->a:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;

    invoke-virtual {v0, p1}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->setDegrees(I)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/camera/y/a;->a:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;

    invoke-virtual {v0, p1}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->input(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/y/a;->a:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([BII)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/y/a;->a:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->input([BII)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/y/a;->a:Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm;->release()V

    return-void
.end method
