.class synthetic Lc/d/a/c/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lc/d/a/b/j/h;->values()[Lc/d/a/b/j/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/d/a/c/a$a;->a:[I

    :try_start_0
    sget-object v1, Lc/d/a/b/j/h;->a:Lc/d/a/b/j/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lc/d/a/c/a$a;->a:[I

    sget-object v1, Lc/d/a/b/j/h;->b:Lc/d/a/b/j/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
