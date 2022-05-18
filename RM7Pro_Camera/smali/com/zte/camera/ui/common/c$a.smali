.class Lcom/zte/camera/ui/common/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/common/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/ui/common/c;


# direct methods
.method private constructor <init>(Lcom/zte/camera/ui/common/c;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/zte/camera/ui/common/c$a;->a:Lcom/zte/camera/ui/common/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/camera/ui/common/c;Lcom/zte/camera/ui/common/c$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/c$a;-><init>(Lcom/zte/camera/ui/common/c;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 22
    invoke-static {}, Lcom/zte/camera/ui/common/c;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onLongClick"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/zte/camera/ui/common/c$a;->a:Lcom/zte/camera/ui/common/c;

    invoke-virtual {p1}, Lcom/zte/camera/ui/common/c;->isLongClickable()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/zte/camera/ui/common/c$a;->a:Lcom/zte/camera/ui/common/c;

    iget-object p1, p1, Lcom/zte/camera/ui/common/c;->a:Lcom/zte/camera/ui/common/c$b;

    if-eqz p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/zte/camera/ui/common/c$a;->a:Lcom/zte/camera/ui/common/c;

    iget-object p1, p1, Lcom/zte/camera/ui/common/c;->a:Lcom/zte/camera/ui/common/c$b;

    invoke-interface {p1}, Lcom/zte/camera/ui/common/c$b;->a()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
