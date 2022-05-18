.class Lcn/nubia/commonui/actionbar/app/a$a;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/reflect/Method;

.field public b:Ljava/lang/reflect/Method;

.field public c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const v7, 0x102002c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    :try_start_0
    const-class v0, Landroid/app/ActionBar;

    const-string v1, "setHomeAsUpIndicator"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/a$a;->a:Ljava/lang/reflect/Method;

    .line 107
    const-class v0, Landroid/app/ActionBar;

    const-string v1, "setHomeActionContentDescription"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/a$a;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 123
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 124
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 129
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 131
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 133
    :goto_1
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/a$a;->c:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 131
    goto :goto_1
.end method
