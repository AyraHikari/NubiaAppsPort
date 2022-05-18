.class Lcn/nubia/choosephoto/ChooseActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/choosephoto/ui/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/choosephoto/ChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/choosephoto/ChooseActivity;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/ChooseActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$c;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$c;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v0}, Lcn/nubia/choosephoto/ChooseActivity;->v(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/choosephoto/ChooseActivity$c;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$c;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v0}, Lcn/nubia/choosephoto/ChooseActivity;->v(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$c;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->w(Lcn/nubia/choosephoto/ChooseActivity;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$c;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v0}, Lcn/nubia/choosephoto/ChooseActivity;->v(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/choosephoto/ChooseActivity$c;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v0}, Lcn/nubia/choosephoto/ChooseActivity;->v(Lcn/nubia/choosephoto/ChooseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$c;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->w(Lcn/nubia/choosephoto/ChooseActivity;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$c;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1}, Lcn/nubia/choosephoto/ChooseActivity;->x(Lcn/nubia/choosephoto/ChooseActivity;)V

    return v1
.end method
