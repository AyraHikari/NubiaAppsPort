.class public Landroid/support/v4/util/ObjectsCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/util/ObjectsCompat$ImplApi19;,
        Landroid/support/v4/util/ObjectsCompat$ImplBase;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/util/ObjectsCompat$ImplBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/v4/util/ObjectsCompat$ImplApi19;

    invoke-direct {v0, v1}, Landroid/support/v4/util/ObjectsCompat$ImplApi19;-><init>(Landroid/support/v4/util/ObjectsCompat$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/util/ObjectsCompat$ImplBase;

    invoke-direct {v0, v1}, Landroid/support/v4/util/ObjectsCompat$ImplBase;-><init>(Landroid/support/v4/util/ObjectsCompat$1;)V

    :goto_0
    sput-object v0, Landroid/support/v4/util/ObjectsCompat;->IMPL:Landroid/support/v4/util/ObjectsCompat$ImplBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/util/ObjectsCompat;->IMPL:Landroid/support/v4/util/ObjectsCompat$ImplBase;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/util/ObjectsCompat$ImplBase;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
