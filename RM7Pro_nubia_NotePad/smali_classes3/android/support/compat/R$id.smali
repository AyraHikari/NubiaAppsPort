.class public final Landroid/support/compat/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/compat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static async:I

.field public static blocking:I

.field public static forever:I

.field public static italic:I

.field public static normal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    sput v0, Landroid/support/compat/R$id;->async:I

    .line 124
    sput v0, Landroid/support/compat/R$id;->blocking:I

    .line 125
    sput v0, Landroid/support/compat/R$id;->forever:I

    .line 126
    sput v0, Landroid/support/compat/R$id;->italic:I

    .line 127
    sput v0, Landroid/support/compat/R$id;->normal:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
