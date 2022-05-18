.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
.super Lcn/nubia/commonui/actionbar/app/b;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;
.implements Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$c;,
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;,
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;,
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;,
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private final C:Ljava/lang/Runnable;

.field private D:Z

.field private E:Landroid/graphics/Rect;

.field private F:Landroid/graphics/Rect;

.field private G:Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;

.field j:Lcn/nubia/commonui/actionbar/view/ActionMode;

.field k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

.field l:Landroid/widget/PopupWindow;

.field m:Ljava/lang/Runnable;

.field private n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

.field private o:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;

.field private p:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;

.field private q:Z

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

.field private z:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/b;-><init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V

    .line 121
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->C:Ljava/lang/Runnable;

    .line 144
    return-void
.end method

.method static synthetic a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->B:I

    return v0
.end method

.method private a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1291
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->y:[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 1292
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1293
    if-eqz v0, :cond_1

    .line 1294
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1296
    :cond_1
    iput-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->y:[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object v0, v1

    .line 1299
    :cond_2
    aget-object v1, v0, p1

    .line 1300
    if-nez v1, :cond_3

    .line 1301
    new-instance v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-direct {v1, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1303
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/Menu;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1278
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->y:[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1279
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1280
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1281
    aget-object v1, v3, v2

    .line 1282
    if-eqz v1, :cond_1

    iget-object v4, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1286
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1279
    goto :goto_0

    .line 1280
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1286
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Landroid/view/Menu;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Landroid/view/Menu;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1161
    invoke-direct {p0, p1, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1162
    return-void
.end method

.method private a(ILcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1253
    if-nez p3, :cond_1

    .line 1255
    if-nez p2, :cond_0

    .line 1256
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->y:[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->y:[Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1261
    :cond_0
    if-eqz p2, :cond_1

    .line 1263
    iget-object p3, p2, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 1268
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-nez v0, :cond_3

    .line 1275
    :cond_2
    :goto_0
    return-void

    .line 1271
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1272
    if-eqz v0, :cond_2

    .line 1273
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, -0x2

    .line 831
    iget-boolean v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iget v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-nez v0, :cond_2

    .line 838
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    .line 839
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 840
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    move v0, v9

    .line 842
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    move v4, v9

    .line 845
    :goto_2
    if-eqz v0, :cond_2

    if-nez v4, :cond_0

    .line 850
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v0

    .line 851
    if-eqz v0, :cond_5

    iget v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    iget-object v5, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 853
    invoke-direct {p0, p1, v9}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 840
    goto :goto_1

    :cond_4
    move v4, v3

    .line 842
    goto :goto_2

    .line 857
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 858
    if-eqz v8, :cond_0

    .line 863
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    if-eqz v0, :cond_c

    .line 869
    :cond_6
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 871
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 879
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 884
    if-nez v0, :cond_e

    .line 885
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 888
    :goto_4
    iget v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->b:I

    .line 889
    iget-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 891
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 892
    if-eqz v0, :cond_8

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 893
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 895
    :cond_8
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 902
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    move v1, v2

    .line 913
    :cond_a
    :goto_5
    iput-boolean v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    .line 915
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->d:I

    iget v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 922
    iget v1, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 923
    iget v1, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 925
    iget-object v1, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    iput-boolean v9, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    goto/16 :goto_0

    .line 873
    :cond_b
    iget-boolean v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 875
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_3

    .line 904
    :cond_c
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 907
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_d

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_a

    :cond_d
    move v1, v2

    goto :goto_5

    :cond_e
    move-object v1, v0

    goto :goto_4
.end method

.method private a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1165
    if-eqz p2, :cond_1

    iget v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    .line 1166
    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1167
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    iget-boolean v1, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    .line 1173
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1174
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 1175
    iget-object v2, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1178
    :cond_2
    iput-boolean v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1179
    iput-boolean v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    .line 1180
    iput-boolean v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    .line 1182
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 1185
    iget v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-direct {p0, v0, p1, v4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(ILcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    .line 1189
    :cond_3
    iput-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    .line 1195
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->z:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-ne v0, p1, :cond_0

    .line 1196
    iput-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->z:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    goto :goto_0
.end method

.method static synthetic a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;ILcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(ILcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method private a(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 2

    .prologue
    .line 1147
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->x:Z

    if-eqz v0, :cond_0

    .line 1158
    :goto_0
    return-void

    .line 1151
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->x:Z

    .line 1152
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1153
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1154
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1155
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1157
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->x:Z

    goto :goto_0
.end method

.method private a(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 937
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    .line 938
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    .line 939
    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 941
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v0

    .line 943
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_4

    .line 944
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 946
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->A:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->B:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 948
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->r:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->C:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 949
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->C:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 952
    :cond_2
    invoke-direct {p0, v4, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 956
    iget-object v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    iget-object v3, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 957
    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 958
    iget-object v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 959
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 978
    :cond_3
    :goto_0
    return-void

    .line 963
    :cond_4
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 964
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 965
    invoke-direct {p0, v4, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 966
    iget-object v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 972
    :cond_5
    invoke-direct {p0, v4, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 974
    iput-boolean v3, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    .line 975
    invoke-direct {p0, v0, v4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 977
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .locals 2

    .prologue
    .line 930
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Landroid/content/Context;)V

    .line 931
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$c;

    iget-object v1, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$c;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Landroid/content/Context;)V

    iput-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    .line 932
    const/16 v0, 0x51

    iput v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->c:I

    .line 933
    const/4 v0, 0x1

    return v0
.end method

.method private a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1308
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return v0

    .line 1316
    :cond_1
    iget-boolean v1, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1318
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1321
    :cond_3
    if-eqz v0, :cond_0

    .line 1323
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-nez v1, :cond_0

    .line 1324
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Z)Z
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->A:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->B:I

    return p1
.end method

.method private b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1332
    iget v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->B:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->B:I

    .line 1334
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->r:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->r:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->C:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1336
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->A:Z

    .line 1338
    :cond_0
    return-void
.end method

.method private b(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 981
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    .line 984
    iget v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v0, :cond_4

    .line 986
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 987
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 988
    sget v0, Lcn/nubia/commonui/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v0, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 990
    const/4 v0, 0x0

    .line 991
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3

    .line 992
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 993
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 994
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 995
    sget v4, Lcn/nubia/commonui/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1002
    :goto_0
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_2

    .line 1003
    if-nez v0, :cond_1

    .line 1004
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1005
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1007
    :cond_1
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    move-object v2, v0

    .line 1010
    if-eqz v2, :cond_4

    .line 1011
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1012
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1016
    :goto_1
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1017
    invoke-virtual {v1, p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V

    .line 1018
    invoke-virtual {p1, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 1020
    return v5

    .line 998
    :cond_3
    sget v4, Lcn/nubia/commonui/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1045
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return v2

    .line 1050
    :cond_1
    iget-boolean v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-eqz v0, :cond_2

    move v2, v1

    .line 1051
    goto :goto_0

    .line 1054
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->z:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->z:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eq v0, p1, :cond_3

    .line 1056
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->z:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-direct {p0, v0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1059
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v3

    .line 1061
    if-eqz v3, :cond_4

    .line 1062
    iget v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    .line 1065
    :cond_4
    iget v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_b

    :cond_5
    move v0, v1

    .line 1068
    :goto_1
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v4, :cond_6

    .line 1071
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 1074
    :cond_6
    iget-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    if-nez v4, :cond_11

    .line 1076
    iget-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_7

    iget-boolean v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    if-eqz v4, :cond_d

    .line 1077
    :cond_7
    iget-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_8

    .line 1078
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1083
    :cond_8
    if-eqz v0, :cond_a

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v4, :cond_a

    .line 1084
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->o:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;

    if-nez v4, :cond_9

    .line 1085
    new-instance v4, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;

    invoke-direct {v4, p0, v7}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;)V

    iput-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->o:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;

    .line 1087
    :cond_9
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    iget-object v5, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->o:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;

    invoke-interface {v4, v5, v6}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 1092
    :cond_a
    iget-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1093
    iget v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    iget-object v5, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1095
    invoke-virtual {p1, v7}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 1097
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->o:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;

    invoke-interface {v0, v7, v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 1065
    goto :goto_1

    .line 1105
    :cond_c
    iput-boolean v2, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    .line 1110
    :cond_d
    iget-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1114
    iget-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_e

    .line 1115
    iget-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v5, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1116
    iput-object v7, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1120
    :cond_e
    iget-object v4, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    iget-object v5, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-interface {v3, v2, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1121
    if-eqz v0, :cond_f

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v0, :cond_f

    .line 1124
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->o:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$a;

    invoke-interface {v0, v7, v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 1126
    :cond_f
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 1131
    :cond_10
    if-eqz p2, :cond_12

    .line 1132
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 1131
    :goto_2
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1133
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_13

    move v0, v1

    :goto_3
    iput-boolean v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    .line 1134
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-boolean v3, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1135
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1139
    :cond_11
    iput-boolean v1, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1140
    iput-boolean v2, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    .line 1141
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->z:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move v2, v1

    .line 1143
    goto/16 :goto_0

    .line 1132
    :cond_12
    const/4 v0, -0x1

    goto :goto_2

    :cond_13
    move v0, v2

    .line 1133
    goto :goto_3
.end method

.method static synthetic c(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)I
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d(I)I

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1341
    invoke-direct {p0, p1, v4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1343
    iget-object v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_1

    .line 1344
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1345
    iget-object v2, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1346
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1347
    iput-object v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1350
    :cond_0
    iget-object v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1351
    iget-object v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->clear()V

    .line 1353
    :cond_1
    iput-boolean v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    .line 1354
    iput-boolean v4, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    .line 1357
    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v0, :cond_3

    .line 1359
    invoke-direct {p0, v3, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1360
    if-eqz v0, :cond_3

    .line 1361
    iput-boolean v3, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1362
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1365
    :cond_3
    return-void
.end method

.method private c(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1024
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    iput-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    .line 1041
    :goto_0
    return v1

    .line 1029
    :cond_0
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    move v1, v2

    .line 1030
    goto :goto_0

    .line 1033
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->p:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;

    if-nez v0, :cond_2

    .line 1034
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->p:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;

    .line 1037
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->p:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$d;

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    .line 1039
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    .line 1041
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private d(I)I
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1374
    .line 1376
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    .line 1377
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 1378
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    .line 1379
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1382
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1383
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->E:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 1384
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->E:Landroid/graphics/Rect;

    .line 1385
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->F:Landroid/graphics/Rect;

    .line 1387
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->E:Landroid/graphics/Rect;

    .line 1388
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->F:Landroid/graphics/Rect;

    .line 1389
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1391
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1392
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    .line 1393
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    .line 1395
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1397
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1398
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    .line 1399
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$color;->abc_input_method_navigation_guard:I

    .line 1400
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1399
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1401
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 1415
    :goto_1
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 1421
    :goto_2
    iget-boolean v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->g:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v7, v1

    move v1, v3

    move v3, v7

    .line 1431
    :goto_3
    if-eqz v3, :cond_2

    .line 1432
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v1

    .line 1436
    :goto_4
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1437
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1440
    :cond_3
    return p1

    :cond_4
    move v1, v2

    .line 1392
    goto :goto_0

    .line 1405
    :cond_5
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1406
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    .line 1407
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1408
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->u:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    .line 1415
    goto :goto_2

    .line 1426
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 1428
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_3

    .line 1437
    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v3, v2

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method static synthetic d(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(I)V

    return-void
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1201
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1203
    iget-boolean v1, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-nez v1, :cond_0

    .line 1204
    invoke-direct {p0, v0, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(ILandroid/view/KeyEvent;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1212
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 1217
    if-nez p1, :cond_3

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    .line 1218
    invoke-interface {v2}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    .line 1219
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1220
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1221
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_0

    .line 1225
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    goto :goto_0

    .line 1228
    :cond_3
    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    if-eqz v2, :cond_5

    .line 1233
    :cond_4
    invoke-direct {p0, v1, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0

    .line 1235
    :cond_5
    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-eqz v2, :cond_0

    .line 1237
    iget-boolean v2, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    if-eqz v2, :cond_6

    .line 1240
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1241
    invoke-direct {p0, v1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1243
    :cond_6
    if-eqz v0, :cond_0

    .line 1245
    invoke-direct {p0, v1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private h()V
    .locals 8

    .prologue
    const v7, 0x1020002

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 273
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->q:Z

    if-nez v0, :cond_e

    .line 274
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 276
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->i:Z

    if-nez v1, :cond_5

    .line 277
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v1, :cond_1

    .line 279
    sget v1, Lcn/nubia/commonui/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    .line 361
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e:Z

    if-eqz v0, :cond_0

    .line 287
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 288
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Lcn/nubia/commonui/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 291
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_4

    .line 292
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 298
    :goto_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$layout;->nubia_abc_screen_toolbar:I

    .line 299
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    .line 301
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    sget v1, Lcn/nubia/commonui/R$id;->decor_content_parent:I

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    .line 303
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 308
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->f:Z

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->initFeature(I)V

    .line 311
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->v:Z

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->initFeature(I)V

    .line 314
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->w:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->initFeature(I)V

    goto :goto_0

    .line 294
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    goto :goto_1

    .line 319
    :cond_5
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->g:Z

    if-eqz v1, :cond_6

    .line 320
    sget v1, Lcn/nubia/commonui/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    .line 326
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_7

    .line 329
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    new-instance v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$2;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$2;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto/16 :goto_0

    .line 323
    :cond_6
    sget v1, Lcn/nubia/commonui/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    goto :goto_2

    .line 351
    :cond_7
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup;

    new-instance v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$3;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$3;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    goto/16 :goto_0

    .line 366
    :cond_8
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-nez v0, :cond_9

    .line 367
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    sget v1, Lcn/nubia/commonui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->t:Landroid/widget/TextView;

    .line 371
    :cond_9
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 373
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 374
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    sget v2, Lcn/nubia/commonui/R$id;->action_bar_activity_content:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 379
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_a

    .line 380
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 381
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 382
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 386
    :cond_a
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 390
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 391
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setId(I)V

    .line 395
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_b

    .line 396
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 400
    :cond_b
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->f()Ljava/lang/CharSequence;

    move-result-object v0

    .line 401
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 402
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Ljava/lang/CharSequence;)V

    .line 405
    :cond_c
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->i()V

    .line 407
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Landroid/view/ViewGroup;)V

    .line 409
    iput-boolean v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->q:Z

    .line 416
    invoke-direct {p0, v5, v5}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 417
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d()Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_e

    .line 418
    :cond_d
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b(I)V

    .line 421
    :cond_e
    return-void
.end method

.method private i()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 428
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    sget-object v2, Lcn/nubia/commonui/R$styleable;->Theme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 435
    sget v0, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 436
    if-nez v1, :cond_f

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 437
    :goto_0
    sget v2, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 439
    :goto_1
    sget v2, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 440
    if-nez v1, :cond_d

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 441
    :goto_2
    sget v3, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v6, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 443
    :goto_3
    sget v3, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 444
    if-nez v1, :cond_b

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 445
    :goto_4
    sget v5, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v6, v5, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 447
    :goto_5
    sget v5, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    if-nez v1, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 449
    :cond_0
    sget v5, Lcn/nubia/commonui/R$styleable;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v6, v5, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 452
    :cond_1
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 453
    iget v5, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v8, :cond_4

    const/4 v5, 0x1

    .line 457
    :goto_6
    if-eqz v5, :cond_5

    .line 458
    :goto_7
    if-eqz v2, :cond_a

    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_a

    .line 459
    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-ne v0, v9, :cond_6

    .line 460
    invoke-virtual {v2, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    .line 466
    :goto_8
    if-eqz v5, :cond_7

    .line 467
    :goto_9
    if-eqz v3, :cond_9

    iget v0, v3, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_9

    .line 468
    iget v0, v3, Landroid/util/TypedValue;->type:I

    if-ne v0, v9, :cond_8

    .line 469
    invoke-virtual {v3, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 475
    :goto_a
    if-ne v2, v4, :cond_2

    if-eq v0, v4, :cond_3

    .line 476
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 479
    :cond_3
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 480
    return-void

    .line 453
    :cond_4
    const/4 v5, 0x0

    goto :goto_6

    :cond_5
    move-object v2, v0

    .line 457
    goto :goto_7

    .line 461
    :cond_6
    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-ne v0, v10, :cond_a

    .line 462
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    invoke-virtual {v2, v0, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    goto :goto_8

    :cond_7
    move-object v3, v1

    .line 466
    goto :goto_9

    .line 470
    :cond_8
    iget v0, v3, Landroid/util/TypedValue;->type:I

    if-ne v0, v10, :cond_9

    .line 471
    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_a

    :cond_9
    move v0, v4

    goto :goto_a

    :cond_a
    move v2, v4

    goto :goto_8

    :cond_b
    move-object v3, v1

    goto/16 :goto_4

    :cond_c
    move-object v3, v1

    goto/16 :goto_5

    :cond_d
    move-object v2, v1

    goto/16 :goto_2

    :cond_e
    move-object v2, v1

    goto/16 :goto_3

    :cond_f
    move-object v0, v1

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private j()V
    .locals 2

    .prologue
    .line 1444
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->q:Z

    if-eqz v0, :cond_0

    .line 1445
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1448
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    .line 821
    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 822
    if-eqz v0, :cond_0

    .line 826
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lcn/nubia/commonui/actionbar/app/ActionBar;
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->h()V

    .line 174
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 176
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->f:Z

    invoke-direct {v1, v0, v2}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    move-object v0, v1

    .line 180
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 181
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->D:Z

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 183
    :cond_1
    return-object v0

    .line 177
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    move-object v0, v1

    goto :goto_0
.end method

.method a(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 607
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 611
    :cond_0
    new-instance v3, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;

    invoke-direct {v3, p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)V

    .line 612
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c()Landroid/content/Context;

    move-result-object v4

    .line 614
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-nez v0, :cond_1

    .line 615
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v0, :cond_5

    .line 616
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-direct {v0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    .line 617
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 618
    new-instance v0, Landroid/widget/PopupWindow;

    sget v5, Lcn/nubia/commonui/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v0, v4, v7, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    .line 620
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 621
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 623
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 624
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$attr;->actionBarSize:I

    invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 625
    iget v0, v0, Landroid/util/TypedValue;->data:I

    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    .line 626
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 625
    invoke-static {v0, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 627
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 628
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 629
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$4;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$4;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->m:Ljava/lang/Runnable;

    .line 647
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_3

    .line 648
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->killMode()V

    .line 649
    new-instance v5, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;

    iget-object v6, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-direct {v5, v4, v6, v3, v0}, Lcn/nubia/commonui/actionbar/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;Z)V

    .line 651
    invoke-virtual {v5}, Lcn/nubia/commonui/actionbar/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;->onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 652
    invoke-virtual {v5}, Lcn/nubia/commonui/actionbar/view/ActionMode;->invalidate()V

    .line 653
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->initForMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 654
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 655
    iput-object v5, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 656
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 659
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 662
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 669
    :cond_3
    :goto_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    if-eqz v0, :cond_4

    .line 670
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatCallback;->onSupportActionModeStarted(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 672
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    return-object v0

    .line 637
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    sget v5, Lcn/nubia/commonui/R$id;->action_mode_bar_stub:I

    .line 638
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;

    .line 639
    if-eqz v0, :cond_1

    .line 641
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 642
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->k:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 649
    goto :goto_1

    .line 666
    :cond_7
    iput-object v7, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    goto :goto_2
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->n:Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 515
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 516
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 695
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v2

    .line 696
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v0

    .line 702
    :cond_1
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->z:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v2, :cond_2

    .line 703
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->z:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 705
    if-eqz v2, :cond_2

    .line 706
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->z:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->z:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    iput-boolean v0, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    goto :goto_0

    .line 717
    :cond_2
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->z:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-nez v2, :cond_3

    .line 718
    invoke-direct {p0, v1, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v2

    .line 719
    invoke-direct {p0, v2, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 720
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 721
    iput-boolean v1, v2, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 722
    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    .line 726
    goto :goto_0
.end method

.method a(ILandroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 523
    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    .line 524
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v2

    .line 525
    if-eqz v2, :cond_0

    .line 526
    invoke-virtual {v2, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 537
    :cond_0
    :goto_0
    return v0

    .line 529
    :cond_1
    if-nez p1, :cond_2

    .line 532
    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 533
    iget-boolean v2, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-eqz v2, :cond_2

    .line 534
    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    :cond_2
    move v0, v1

    .line 537
    goto :goto_0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 731
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 732
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 733
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 735
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 733
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 735
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 266
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->h()V

    .line 267
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 268
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 270
    return-void
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 739
    sparse-switch p1, :sswitch_data_0

    .line 754
    :cond_0
    :goto_0
    return v0

    .line 741
    :sswitch_0
    invoke-direct {p0, v0, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 744
    :sswitch_1
    invoke-direct {p0, v0, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(IZ)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v2

    .line 745
    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-eqz v3, :cond_1

    .line 746
    invoke-direct {p0, v2, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    move v0, v1

    .line 747
    goto :goto_0

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 750
    goto :goto_0

    .line 739
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method b(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 542
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 543
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v1

    .line 544
    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 549
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 758
    packed-switch p1, :pswitch_data_0

    .line 766
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 767
    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 769
    :cond_0
    :goto_0
    return v0

    .line 760
    :pswitch_0
    invoke-direct {p0, v0, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 758
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 775
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    move v6, v0

    .line 777
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->G:Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;

    if-nez v2, :cond_0

    .line 778
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->G:Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;

    .line 783
    :cond_0
    if-eqz v6, :cond_2

    iget-boolean v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->q:Z

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 784
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-eq v2, v3, :cond_2

    move v5, v0

    .line 786
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->G:Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    move v6, v1

    .line 775
    goto :goto_0

    :cond_2
    move v5, v1

    .line 784
    goto :goto_1
.end method

.method g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 677
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v1, :cond_1

    .line 678
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 689
    :cond_0
    :goto_0
    return v0

    .line 683
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v1

    .line 684
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->collapseActionView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 689
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public installViewFactory()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 793
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 794
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 799
    :goto_0
    return-void

    .line 796
    :cond_0
    const-string v0, "NubiaWidget"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 602
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->q:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 219
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 148
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/b;->onCreate(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->r:Landroid/view/ViewGroup;

    .line 152
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 156
    if-nez v0, :cond_1

    .line 157
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->D:Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 808
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 809
    if-eqz v0, :cond_0

    .line 814
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 554
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->getRootMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Landroid/view/Menu;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 557
    if-eqz v1, :cond_0

    .line 558
    iget v1, v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Z)V

    .line 567
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->h()V

    .line 169
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 235
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method public requestWindowFeature(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 484
    packed-switch p1, :pswitch_data_0

    .line 507
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    :goto_0
    return v0

    .line 486
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j()V

    .line 487
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->e:Z

    goto :goto_0

    .line 490
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j()V

    .line 491
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->f:Z

    goto :goto_0

    .line 494
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j()V

    .line 495
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->g:Z

    goto :goto_0

    .line 498
    :pswitch_4
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j()V

    .line 499
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->v:Z

    goto :goto_0

    .line 502
    :pswitch_5
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j()V

    .line 503
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->w:Z

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setContentView(I)V
    .locals 2

    .prologue
    .line 248
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->h()V

    .line 249
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 250
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 251
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 252
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 253
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->h()V

    .line 240
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 241
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 242
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 244
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->h()V

    .line 258
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->s:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 259
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 260
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 262
    return-void
.end method

.method public setSupportActionBar(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 194
    instance-of v0, v0, Lcn/nubia/commonui/actionbar/internal/app/WindowDecorActionBar;

    if-eqz v0, :cond_1

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-direct {v1, p1, v0, v2}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window;)V

    .line 202
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/app/ActionBar;)V

    .line 203
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 204
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/app/ToolbarActionBar;->invalidateOptionsMenu()Z

    goto :goto_0
.end method

.method public startSupportActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;
    .locals 3

    .prologue
    .line 571
    if-nez p1, :cond_0

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 579
    :cond_1
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;

    invoke-direct {v0, p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$b;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)V

    .line 581
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v1

    .line 582
    if-eqz v1, :cond_2

    .line 583
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->startActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 584
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    if-eqz v1, :cond_2

    .line 585
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->d:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    invoke-interface {v1, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatCallback;->onSupportActionModeStarted(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 589
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    if-nez v1, :cond_3

    .line 591
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    .line 594
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->j:Lcn/nubia/commonui/actionbar/view/ActionMode;

    return-object v0
.end method
