.class public Landroidx/core/c/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Landroidx/core/c/b$b;


# direct methods
.method public constructor <init>(I[Landroidx/core/c/b$b;)V
    .locals 0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput p1, p0, Landroidx/core/c/b$a;->a:I

    .line 429
    iput-object p2, p0, Landroidx/core/c/b$a;->b:[Landroidx/core/c/b$b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 433
    iget v0, p0, Landroidx/core/c/b$a;->a:I

    return v0
.end method

.method public b()[Landroidx/core/c/b$b;
    .locals 1

    .line 437
    iget-object v0, p0, Landroidx/core/c/b$a;->b:[Landroidx/core/c/b$b;

    return-object v0
.end method
