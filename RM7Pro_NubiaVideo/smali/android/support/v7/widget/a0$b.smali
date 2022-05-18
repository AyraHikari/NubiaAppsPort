.class public Landroid/support/v7/widget/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/support/v7/widget/a0$b;->a:I

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/a0$b;->b:Z

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/a0$b;->c:Z

    .line 4
    iput-boolean v0, p0, Landroid/support/v7/widget/a0$b;->d:Z

    return-void
.end method
