.class Lcn/nubia/camera/three_a/ui/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/three_a/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/ui/a;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/three_a/ui/a;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/a$a;->a:Lcn/nubia/camera/three_a/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/three_a/ui/a;Lcn/nubia/camera/three_a/ui/a$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/a$a;-><init>(Lcn/nubia/camera/three_a/ui/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/a$a;->a:Lcn/nubia/camera/three_a/ui/a;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/a;->a()V

    return-void
.end method
