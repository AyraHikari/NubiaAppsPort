.class public Lcn/nubia/camera/y/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/algorithm/camera/DelayRecorderAlgorithm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/y/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/y/h;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/y/h;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcn/nubia/camera/y/h$c;->a:Lcn/nubia/camera/y/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "PreviewDataRender"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, "UNKNOWN MESSAGE"

    .line 195
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/y/h$c;->a:Lcn/nubia/camera/y/h;

    invoke-static {p1}, Lcn/nubia/camera/y/h;->b(Lcn/nubia/camera/y/h;)Lcn/nubia/camera/y/h$a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 191
    iget-object p1, p0, Lcn/nubia/camera/y/h$c;->a:Lcn/nubia/camera/y/h;

    invoke-static {p1}, Lcn/nubia/camera/y/h;->b(Lcn/nubia/camera/y/h;)Lcn/nubia/camera/y/h$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/y/h$a;->c()V

    goto :goto_0

    .line 185
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/y/h$c;->a:Lcn/nubia/camera/y/h;

    invoke-static {p1}, Lcn/nubia/camera/y/h;->b(Lcn/nubia/camera/y/h;)Lcn/nubia/camera/y/h$a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 186
    iget-object p1, p0, Lcn/nubia/camera/y/h$c;->a:Lcn/nubia/camera/y/h;

    invoke-static {p1}, Lcn/nubia/camera/y/h;->b(Lcn/nubia/camera/y/h;)Lcn/nubia/camera/y/h$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/y/h$a;->b()V

    goto :goto_0

    :cond_2
    const-string p1, "delete half"

    .line 179
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p1, p0, Lcn/nubia/camera/y/h$c;->a:Lcn/nubia/camera/y/h;

    invoke-static {p1}, Lcn/nubia/camera/y/h;->b(Lcn/nubia/camera/y/h;)Lcn/nubia/camera/y/h$a;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 181
    iget-object p1, p0, Lcn/nubia/camera/y/h$c;->a:Lcn/nubia/camera/y/h;

    invoke-static {p1}, Lcn/nubia/camera/y/h;->b(Lcn/nubia/camera/y/h;)Lcn/nubia/camera/y/h$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/y/h$a;->a()V

    goto :goto_0

    :cond_3
    const-string p1, "encode complete"

    .line 175
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcn/nubia/camera/y/h$c;->a:Lcn/nubia/camera/y/h;

    invoke-static {p1}, Lcn/nubia/camera/y/h;->b(Lcn/nubia/camera/y/h;)Lcn/nubia/camera/y/h$a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/y/h$c;->a:Lcn/nubia/camera/y/h;

    invoke-static {v0}, Lcn/nubia/camera/y/h;->a(Lcn/nubia/camera/y/h;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/nubia/camera/y/h$a;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
