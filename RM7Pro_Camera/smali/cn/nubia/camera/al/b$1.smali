.class Lcn/nubia/camera/al/b$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/al/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/al/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/al/b;Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/camera/al/b$1;->a:Lcn/nubia/camera/al/b;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 40
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 41
    iget-object v0, p0, Lcn/nubia/camera/al/b$1;->a:Lcn/nubia/camera/al/b;

    invoke-static {v0}, Lcn/nubia/camera/al/b;->a(Lcn/nubia/camera/al/b;)Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->a()V

    const-string v0, "OrientationEnabler"

    const-string v1, "async enable orientation"

    .line 42
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
