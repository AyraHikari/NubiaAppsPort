.class Lcn/nubia/camera/videomaker/a/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/videomaker/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/a/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/videomaker/a/b;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcn/nubia/camera/videomaker/a/b$a;->a:Lcn/nubia/camera/videomaker/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/videomaker/a/b;Lcn/nubia/camera/videomaker/a/b$1;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/a/b$a;-><init>(Lcn/nubia/camera/videomaker/a/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/a/b$a;->a:Lcn/nubia/camera/videomaker/a/b;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/a/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
