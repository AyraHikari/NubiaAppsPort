.class public abstract Landroidx/fragment/app/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/i$a;,
        Landroidx/fragment/app/i$b;
    }
.end annotation


# static fields
.field static final a:Landroidx/fragment/app/g;


# instance fields
.field private b:Landroidx/fragment/app/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroidx/fragment/app/g;

    invoke-direct {v0}, Landroidx/fragment/app/g;-><init>()V

    sput-object v0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/g;

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/g;)V
    .locals 0

    .line 401
    iput-object p1, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/g;

    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/c;",
            ">;"
        }
    .end annotation
.end method

.method public c()Landroidx/fragment/app/g;
    .locals 1

    .line 411
    iget-object v0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/g;

    if-nez v0, :cond_0

    .line 412
    sget-object v0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g;

    iput-object v0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/g;

    .line 414
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/g;

    return-object v0
.end method
