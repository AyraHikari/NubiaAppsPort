.class final Landroidx/fragment/app/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroidx/fragment/app/c;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroidx/lifecycle/e$b;

.field h:Landroidx/lifecycle/e$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/c;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroidx/fragment/app/n$a;->a:I

    .line 77
    iput-object p2, p0, Landroidx/fragment/app/n$a;->b:Landroidx/fragment/app/c;

    .line 78
    sget-object p1, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    iput-object p1, p0, Landroidx/fragment/app/n$a;->g:Landroidx/lifecycle/e$b;

    .line 79
    sget-object p1, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    iput-object p1, p0, Landroidx/fragment/app/n$a;->h:Landroidx/lifecycle/e$b;

    return-void
.end method
