.class Lu/aly/c$a;
.super Ljava/lang/Object;
.source "UMCCDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lu/aly/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 24
    new-instance v0, Lu/aly/c;

    invoke-static {}, Lu/aly/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lu/aly/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lu/aly/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cc.db"

    const/4 v5, 0x1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lu/aly/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILu/aly/c$1;)V

    sput-object v0, Lu/aly/c$a;->a:Lu/aly/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lu/aly/c;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/c$a;->a:Lu/aly/c;

    return-object v0
.end method
