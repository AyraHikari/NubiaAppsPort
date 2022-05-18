.class Lcn/nubia/choosephoto/ChooseActivity$d;
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

    iput-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$d;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcn/nubia/choosephoto/a;

    if-eqz v1, :cond_0

    check-cast p1, Lcn/nubia/choosephoto/a;

    iget-object v1, p0, Lcn/nubia/choosephoto/ChooseActivity$d;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {v1, p1}, Lcn/nubia/choosephoto/ChooseActivity;->p(Lcn/nubia/choosephoto/ChooseActivity;Lcn/nubia/choosephoto/a;)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ChooseActivity$d;->a:Lcn/nubia/choosephoto/ChooseActivity;

    invoke-static {p1, v0}, Lcn/nubia/choosephoto/ChooseActivity;->u(Lcn/nubia/choosephoto/ChooseActivity;I)I

    :cond_0
    return v0
.end method
