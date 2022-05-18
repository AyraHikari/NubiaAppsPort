.class Lcn/nubia/camera/debugmode/a$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/debugmode/NubiaDebugItem$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/debugmode/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/debugmode/a;

.field private b:Landroid/view/LayoutInflater;

.field private c:[Lcn/nubia/camera/debugmode/a$b;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/debugmode/a;[Lcn/nubia/camera/debugmode/a$b;Landroid/content/Context;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/nubia/camera/debugmode/a$a;->a:Lcn/nubia/camera/debugmode/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    iput-object p2, p0, Lcn/nubia/camera/debugmode/a$a;->c:[Lcn/nubia/camera/debugmode/a$b;

    .line 85
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/debugmode/a$a;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/debugmode/a$a;->a:Lcn/nubia/camera/debugmode/a;

    invoke-static {v0}, Lcn/nubia/camera/debugmode/a;->b(Lcn/nubia/camera/debugmode/a;)Lcn/nubia/camera/debugmode/NubiaDebugItem$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/debugmode/a$a;->a:Lcn/nubia/camera/debugmode/a;

    invoke-static {v0}, Lcn/nubia/camera/debugmode/a;->b(Lcn/nubia/camera/debugmode/a;)Lcn/nubia/camera/debugmode/NubiaDebugItem$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/debugmode/NubiaDebugItem$a;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/debugmode/a$a;->c:[Lcn/nubia/camera/debugmode/a$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 114
    iget-object p2, p0, Lcn/nubia/camera/debugmode/a$a;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0043

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 116
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/debugmode/a$a;->c:[Lcn/nubia/camera/debugmode/a$b;

    if-nez v0, :cond_1

    return-object p3

    :cond_1
    const p3, 0x7f0900d8

    .line 120
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcn/nubia/camera/debugmode/NubiaDebugItem;

    .line 121
    iget-object p3, p0, Lcn/nubia/camera/debugmode/a$a;->c:[Lcn/nubia/camera/debugmode/a$b;

    aget-object p3, p3, p1

    iget-object v1, p3, Lcn/nubia/camera/debugmode/a$b;->a:Ljava/lang/String;

    iget-object p3, p0, Lcn/nubia/camera/debugmode/a$a;->c:[Lcn/nubia/camera/debugmode/a$b;

    aget-object p3, p3, p1

    iget-object v2, p3, Lcn/nubia/camera/debugmode/a$b;->c:Ljava/lang/String;

    iget-object p3, p0, Lcn/nubia/camera/debugmode/a$a;->c:[Lcn/nubia/camera/debugmode/a$b;

    aget-object p1, p3, p1

    iget-object v3, p1, Lcn/nubia/camera/debugmode/a$b;->b:Ljava/lang/String;

    iget-object p1, p0, Lcn/nubia/camera/debugmode/a$a;->a:Lcn/nubia/camera/debugmode/a;

    invoke-static {p1}, Lcn/nubia/camera/debugmode/a;->a(Lcn/nubia/camera/debugmode/a;)Lcom/android/preference/c;

    move-result-object v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/debugmode/NubiaDebugItem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/preference/c;Lcn/nubia/camera/debugmode/NubiaDebugItem$a;)V

    return-object p2
.end method
