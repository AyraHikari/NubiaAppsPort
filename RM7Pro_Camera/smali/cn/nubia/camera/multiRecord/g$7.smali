.class Lcn/nubia/camera/multiRecord/g$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/multiRecord/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/d;Lcn/nubia/camera/multiRecord/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const-string v0, "MultiRecordFragment"

    const-string v1, "onInit"

    .line 1011
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    sget v0, Lcn/nubia/camera/multiRecord/g;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1013
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/m;->b()V

    .line 1014
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/m;->b(Z)V

    .line 1015
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 1017
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->F(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/multiRecord/g$7$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$7$1;-><init>(Lcn/nubia/camera/multiRecord/g$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1027
    :cond_0
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 1028
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/m;->a()V

    .line 1029
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/m;->a(Z)V

    .line 1030
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 1031
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->G(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/multiRecord/g$7$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$7$2;-><init>(Lcn/nubia/camera/multiRecord/g$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1038
    :cond_1
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    if-nez v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/m;->f()V

    .line 1040
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/m;->e(Z)V

    .line 1041
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 1042
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->H(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/multiRecord/g$7$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$7$3;-><init>(Lcn/nubia/camera/multiRecord/g$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1049
    :cond_2
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1050
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/m;->f()V

    .line 1051
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/m;->f(Z)V

    .line 1052
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 1053
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->I(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/multiRecord/g$7$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$7$4;-><init>(Lcn/nubia/camera/multiRecord/g$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1060
    :cond_3
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 1061
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/m;->c()V

    .line 1062
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/m;->d(Z)V

    .line 1063
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 1064
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->J(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/multiRecord/g$7$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$7$5;-><init>(Lcn/nubia/camera/multiRecord/g$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1071
    :cond_4
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    .line 1072
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/m;->d()V

    .line 1073
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/m;->e()V

    .line 1074
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->o(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/d;

    move-result-object v0

    const/4 v3, 0x3

    new-array v4, v3, [Lcn/nubia/camera/multiRecord/a;

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v5, v5, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v5, v5, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v5, v5, v1

    aput-object v5, v4, v2

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v5, v5, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v5, v5, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    aput-object v5, v4, v1

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v5, v5, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v5, v5, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v3, v5, v3

    aput-object v3, v4, v6

    invoke-virtual {v0, v4}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 1075
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    new-array v1, v1, [Lcn/nubia/camera/multiRecord/a;

    sget-object v3, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "MultiRecordFragment"

    const-string v1, "onAnimationEnd"

    .line 1082
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 1084
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 1087
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$7;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->K(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/multiRecord/g$7$6;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$7$6;-><init>(Lcn/nubia/camera/multiRecord/g$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
