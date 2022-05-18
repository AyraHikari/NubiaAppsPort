.class public Lc/a/a/h/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/d;


# instance fields
.field private a:Lc/a/a/h/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/a/a/h/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/a/h/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lc/a/a/h/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lc/a/a/i/c;)V

    iput-object v0, p0, Lc/a/a/h/g;->a:Lc/a/a/h/h;

    return-void
.end method

.method public constructor <init>(Lc/a/a/h/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/a/h/g;->a:Lc/a/a/h/h;

    return-void
.end method

.method private d(ILc/a/a/h/h;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Lc/a/a/h/h;->K()Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lc/a/a/h/h;->G()Lc/a/a/i/c;

    move-result-object p1

    invoke-virtual {p1}, Lc/a/a/i/c;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lc/a/a/g;->k(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lc/a/a/g;->g(Ljava/lang/String;)Lc/a/a/a;

    move-result-object p1

    invoke-interface {p1}, Lc/a/a/a;->o()Ljava/util/Calendar;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    invoke-static {v0}, Lc/a/a/g;->g(Ljava/lang/String;)Lc/a/a/a;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    new-instance p1, Ljava/lang/Double;

    invoke-static {v0}, Lc/a/a/g;->h(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1

    :pswitch_4
    new-instance p1, Ljava/lang/Long;

    invoke-static {v0}, Lc/a/a/g;->j(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :pswitch_5
    new-instance p1, Ljava/lang/Integer;

    invoke-static {v0}, Lc/a/a/g;->i(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    :pswitch_6
    new-instance p1, Ljava/lang/Boolean;

    invoke-static {v0}, Lc/a/a/g;->f(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_1

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    move-object p1, v0

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lc/a/a/h/c;->d(Ljava/lang/String;)V

    invoke-static {p2}, Lc/a/a/h/c;->c(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lc/a/a/h/k/c;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/h/k/b;

    move-result-object p1

    iget-object p2, p0, Lc/a/a/h/g;->a:Lc/a/a/h/h;

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lc/a/a/h/i;->d(Lc/a/a/h/h;Lc/a/a/h/k/b;ZLc/a/a/i/c;)Lc/a/a/h/h;

    move-result-object p1
    :try_end_0
    .catch Lc/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lc/a/a/h/g;->e(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc/a/a/h/g;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lc/a/a/i/c;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/a/a/h/g;->a:Lc/a/a/h/h;

    invoke-virtual {v0}, Lc/a/a/h/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/h/h;

    new-instance v1, Lc/a/a/h/g;

    invoke-direct {v1, v0}, Lc/a/a/h/g;-><init>(Lc/a/a/h/h;)V

    return-object v1
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lc/a/a/h/c;->d(Ljava/lang/String;)V

    invoke-static {p2}, Lc/a/a/h/c;->c(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lc/a/a/h/k/c;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/h/k/b;

    move-result-object p1

    iget-object p2, p0, Lc/a/a/h/g;->a:Lc/a/a/h/h;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1}, Lc/a/a/h/i;->d(Lc/a/a/h/h;Lc/a/a/h/k/b;ZLc/a/a/i/c;)Lc/a/a/h/h;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lc/a/a/h/h;->G()Lc/a/a/i/c;

    move-result-object p2

    invoke-virtual {p2}, Lc/a/a/i/c;->m()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lc/a/a/c;

    const/16 p2, 0x66

    const-string p3, "Property must be simple when a value type is requested"

    invoke-direct {p1, p3, p2}, Lc/a/a/c;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p3, p1}, Lc/a/a/h/g;->d(ILc/a/a/h/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method f(Lc/a/a/h/h;Ljava/lang/Object;Lc/a/a/i/c;Z)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lc/a/a/h/h;->x()V

    :cond_0
    invoke-virtual {p1}, Lc/a/a/h/h;->G()Lc/a/a/i/c;

    move-result-object p4

    invoke-virtual {p4, p3}, Lc/a/a/i/c;->q(Lc/a/a/i/c;)V

    invoke-virtual {p1}, Lc/a/a/h/h;->G()Lc/a/a/i/c;

    move-result-object p3

    invoke-virtual {p3}, Lc/a/a/i/c;->m()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p1, p2}, Lc/a/a/h/i;->m(Lc/a/a/h/h;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lc/a/a/c;

    const/16 p2, 0x66

    const-string p3, "Composite nodes can\'t have values"

    invoke-direct {p1, p3, p2}, Lc/a/a/c;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lc/a/a/h/h;->T()V

    :goto_1
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lc/a/a/i/c;)V
    .locals 1

    invoke-static {p1}, Lc/a/a/h/c;->d(Ljava/lang/String;)V

    invoke-static {p2}, Lc/a/a/h/c;->c(Ljava/lang/String;)V

    invoke-static {p4, p3}, Lc/a/a/h/i;->n(Lc/a/a/i/c;Ljava/lang/Object;)Lc/a/a/i/c;

    move-result-object p4

    invoke-static {p1, p2}, Lc/a/a/h/k/c;->a(Ljava/lang/String;Ljava/lang/String;)Lc/a/a/h/k/b;

    move-result-object p1

    iget-object p2, p0, Lc/a/a/h/g;->a:Lc/a/a/h/h;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0, p4}, Lc/a/a/h/i;->d(Lc/a/a/h/h;Lc/a/a/h/k/b;ZLc/a/a/i/c;)Lc/a/a/h/h;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p4, p2}, Lc/a/a/h/g;->f(Lc/a/a/h/h;Ljava/lang/Object;Lc/a/a/i/c;Z)V

    return-void

    :cond_0
    new-instance p1, Lc/a/a/c;

    const/16 p2, 0x66

    const-string p3, "Specified property does not exist"

    invoke-direct {p1, p3, p2}, Lc/a/a/c;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
