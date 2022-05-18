.class public Lc/b/a/n/j/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/j/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/j/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/n/j/l<",
        "TA;",
        "Lc/b/a/n/j/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/j/l<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/b/a/n/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/j/l<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/n/j/l;Lc/b/a/n/j/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/j/l<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lc/b/a/n/j/l<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "At least one of streamLoader and fileDescriptorLoader must be non null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    :cond_0
    iput-object p1, p0, Lc/b/a/n/j/f;->a:Lc/b/a/n/j/l;

    .line 4
    iput-object p2, p0, Lc/b/a/n/j/f;->b:Lc/b/a/n/j/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Lc/b/a/n/h/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lc/b/a/n/h/c<",
            "Lc/b/a/n/j/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/j/f;->a:Lc/b/a/n/j/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lc/b/a/n/j/l;->a(Ljava/lang/Object;II)Lc/b/a/n/h/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lc/b/a/n/j/f;->b:Lc/b/a/n/j/l;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2, p1, p2, p3}, Lc/b/a/n/j/l;->a(Ljava/lang/Object;II)Lc/b/a/n/h/c;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v1

    .line 5
    :cond_3
    :goto_2
    new-instance p2, Lc/b/a/n/j/f$a;

    invoke-direct {p2, v0, p1}, Lc/b/a/n/j/f$a;-><init>(Lc/b/a/n/h/c;Lc/b/a/n/h/c;)V

    return-object p2
.end method
