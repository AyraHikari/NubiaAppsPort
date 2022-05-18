.class public Lcn/nubia/camera/extendedUI/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcn/nubia/camera/extendedUI/c;->c:I

    .line 21
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/c;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/extendedUI/c;->c:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 73
    iget v0, p0, Lcn/nubia/camera/extendedUI/c;->c:I

    return v0
.end method

.method public a(I)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/c;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "outSetGone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutControlDisplayUIDelegate"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/extendedUI/c;->c:I

    .line 37
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/c;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/c;->a:Landroid/view/View;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/c;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "outSetVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutControlDisplayUIDelegate"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/c;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 54
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/c;->a:Landroid/view/View;

    iget v0, p0, Lcn/nubia/camera/extendedUI/c;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/c;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iput p1, p0, Lcn/nubia/camera/extendedUI/c;->c:I

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/c;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/c;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
