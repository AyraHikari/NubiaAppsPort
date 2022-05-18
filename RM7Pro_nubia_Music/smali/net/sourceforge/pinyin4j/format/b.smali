.class public final Lnet/sourceforge/pinyin4j/format/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lnet/sourceforge/pinyin4j/format/d;

.field private b:Lnet/sourceforge/pinyin4j/format/a;

.field private c:Lnet/sourceforge/pinyin4j/format/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lnet/sourceforge/pinyin4j/format/b;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lnet/sourceforge/pinyin4j/format/d;->a:Lnet/sourceforge/pinyin4j/format/d;

    iput-object v0, p0, Lnet/sourceforge/pinyin4j/format/b;->a:Lnet/sourceforge/pinyin4j/format/d;

    sget-object v0, Lnet/sourceforge/pinyin4j/format/a;->b:Lnet/sourceforge/pinyin4j/format/a;

    iput-object v0, p0, Lnet/sourceforge/pinyin4j/format/b;->b:Lnet/sourceforge/pinyin4j/format/a;

    sget-object v0, Lnet/sourceforge/pinyin4j/format/c;->a:Lnet/sourceforge/pinyin4j/format/c;

    iput-object v0, p0, Lnet/sourceforge/pinyin4j/format/b;->c:Lnet/sourceforge/pinyin4j/format/c;

    return-void
.end method

.method public a(Lnet/sourceforge/pinyin4j/format/a;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/b;->b:Lnet/sourceforge/pinyin4j/format/a;

    return-void
.end method

.method public a(Lnet/sourceforge/pinyin4j/format/c;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/b;->c:Lnet/sourceforge/pinyin4j/format/c;

    return-void
.end method

.method public a(Lnet/sourceforge/pinyin4j/format/d;)V
    .locals 0

    iput-object p1, p0, Lnet/sourceforge/pinyin4j/format/b;->a:Lnet/sourceforge/pinyin4j/format/d;

    return-void
.end method

.method public b()Lnet/sourceforge/pinyin4j/format/a;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/pinyin4j/format/b;->b:Lnet/sourceforge/pinyin4j/format/a;

    return-object v0
.end method

.method public c()Lnet/sourceforge/pinyin4j/format/c;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/pinyin4j/format/b;->c:Lnet/sourceforge/pinyin4j/format/c;

    return-object v0
.end method

.method public d()Lnet/sourceforge/pinyin4j/format/d;
    .locals 1

    iget-object v0, p0, Lnet/sourceforge/pinyin4j/format/b;->a:Lnet/sourceforge/pinyin4j/format/d;

    return-object v0
.end method
