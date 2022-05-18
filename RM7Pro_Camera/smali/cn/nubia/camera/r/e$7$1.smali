.class Lcn/nubia/camera/r/e$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/r/e$7;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/e$7;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/e$7;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcn/nubia/camera/r/e$7$1;->a:Lcn/nubia/camera/r/e$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 744
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/e$7$1;->a:Lcn/nubia/camera/r/e$7;

    iget-object v1, v1, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    const v2, 0x7f0f00c7

    invoke-virtual {v1, v2}, Lcn/nubia/camera/r/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;IIZ)V

    const-string v0, "\u6643\u52a8\u592a\u5927\uff0c\u505c\u6b62\u62cd\u6444\n"

    .line 745
    invoke-static {v0}, Lcn/nubia/camera/r/a;->b(Ljava/lang/String;)V

    return-void
.end method
