.class Landroid/support/transition/GhostViewApi21;
.super Ljava/lang/Object;
.source "GhostViewApi21.java"

# interfaces
.implements Landroid/support/transition/GhostViewImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/GhostViewApi21$Creator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GhostViewApi21"

.field private static sAddGhostMethod:Ljava/lang/reflect/Method;

.field private static sAddGhostMethodFetched:Z

.field private static sGhostViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sGhostViewClassFetched:Z

.field private static sRemoveGhostMethod:Ljava/lang/reflect/Method;

.field private static sRemoveGhostMethodFetched:Z


# instance fields
.field private final mGhostView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "ghostView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/support/transition/GhostViewApi21;->mGhostView:Landroid/view/View;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/support/transition/GhostViewApi21$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/support/transition/GhostViewApi21$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/transition/GhostViewApi21;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->fetchAddGhostMethod()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/support/transition/GhostViewApi21;->sAddGhostMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->fetchRemoveGhostMethod()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/support/transition/GhostViewApi21;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static fetchAddGhostMethod()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 104
    sget-boolean v1, Landroid/support/transition/GhostViewApi21;->sAddGhostMethodFetched:Z

    if-nez v1, :cond_0

    .line 106
    :try_start_0
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->fetchGhostViewClass()V

    .line 107
    sget-object v1, Landroid/support/transition/GhostViewApi21;->sGhostViewClass:Ljava/lang/Class;

    const-string v2, "addGhost"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/ViewGroup;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/GhostViewApi21;->sAddGhostMethod:Ljava/lang/reflect/Method;

    .line 109
    sget-object v1, Landroid/support/transition/GhostViewApi21;->sAddGhostMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    sput-boolean v6, Landroid/support/transition/GhostViewApi21;->sAddGhostMethodFetched:Z

    .line 115
    :cond_0
    return-void

    .line 110
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "GhostViewApi21"

    const-string v2, "Failed to retrieve addGhost method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static fetchGhostViewClass()V
    .locals 3

    .prologue
    .line 93
    sget-boolean v1, Landroid/support/transition/GhostViewApi21;->sGhostViewClassFetched:Z

    if-nez v1, :cond_0

    .line 95
    :try_start_0
    const-string v1, "android.view.GhostView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/support/transition/GhostViewApi21;->sGhostViewClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/transition/GhostViewApi21;->sGhostViewClassFetched:Z

    .line 101
    :cond_0
    return-void

    .line 96
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "GhostViewApi21"

    const-string v2, "Failed to retrieve GhostView class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static fetchRemoveGhostMethod()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 118
    sget-boolean v1, Landroid/support/transition/GhostViewApi21;->sRemoveGhostMethodFetched:Z

    if-nez v1, :cond_0

    .line 120
    :try_start_0
    invoke-static {}, Landroid/support/transition/GhostViewApi21;->fetchGhostViewClass()V

    .line 121
    sget-object v1, Landroid/support/transition/GhostViewApi21;->sGhostViewClass:Ljava/lang/Class;

    const-string v2, "removeGhost"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/GhostViewApi21;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    .line 122
    sget-object v1, Landroid/support/transition/GhostViewApi21;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    sput-boolean v6, Landroid/support/transition/GhostViewApi21;->sRemoveGhostMethodFetched:Z

    .line 128
    :cond_0
    return-void

    .line 123
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 124
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "GhostViewApi21"

    const-string v2, "Failed to retrieve removeGhost method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 90
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/transition/GhostViewApi21;->mGhostView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    return-void
.end method
