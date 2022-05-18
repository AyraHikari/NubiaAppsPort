.class public Landroidx/constraintlayout/b/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/constraintlayout/b/a/f;

.field private c:Z

.field private d:Z

.field private e:Landroidx/constraintlayout/b/a/f;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/a/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/constraintlayout/b/a/a/b$b;

.field private i:Landroidx/constraintlayout/b/a/a/b$a;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/b/a/f;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/a/e;->c:Z

    .line 45
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/a/e;->d:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->f:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->h:Landroidx/constraintlayout/b/a/a/b$b;

    .line 57
    new-instance v0, Landroidx/constraintlayout/b/a/a/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/b/a/a/b$a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->i:Landroidx/constraintlayout/b/a/a/b$a;

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->a:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    .line 53
    iput-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->e:Landroidx/constraintlayout/b/a/f;

    return-void
.end method

.method private a(Landroidx/constraintlayout/b/a/f;I)I
    .locals 6

    .line 64
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 67
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/b/a/a/m;

    .line 68
    invoke-virtual {v4, p1, p2}, Landroidx/constraintlayout/b/a/a/m;->a(Landroidx/constraintlayout/b/a/f;I)J

    move-result-wide v4

    .line 69
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    long-to-int p1, v1

    return p1
.end method

.method private a(Landroidx/constraintlayout/b/a/a/f;IILandroidx/constraintlayout/b/a/a/f;Ljava/util/ArrayList;Landroidx/constraintlayout/b/a/a/m;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/b/a/a/f;",
            "II",
            "Landroidx/constraintlayout/b/a/a/f;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/a/a/m;",
            ">;",
            "Landroidx/constraintlayout/b/a/a/m;",
            ")V"
        }
    .end annotation

    .line 715
    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->d:Landroidx/constraintlayout/b/a/a/p;

    .line 716
    iget-object v0, p1, Landroidx/constraintlayout/b/a/a/p;->e:Landroidx/constraintlayout/b/a/a/m;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p6, :cond_1

    .line 721
    new-instance p6, Landroidx/constraintlayout/b/a/a/m;

    invoke-direct {p6, p1, p3}, Landroidx/constraintlayout/b/a/a/m;-><init>(Landroidx/constraintlayout/b/a/a/p;I)V

    .line 722
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_1
    iput-object p6, p1, Landroidx/constraintlayout/b/a/a/p;->e:Landroidx/constraintlayout/b/a/a/m;

    .line 726
    invoke-virtual {p6, p1}, Landroidx/constraintlayout/b/a/a/m;->a(Landroidx/constraintlayout/b/a/a/p;)V

    .line 727
    iget-object p3, p1, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object p3, p3, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/d;

    .line 728
    instance-of v1, v0, Landroidx/constraintlayout/b/a/a/f;

    if-eqz v1, :cond_2

    .line 729
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/b/a/a/f;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/f;IILandroidx/constraintlayout/b/a/a/f;Ljava/util/ArrayList;Landroidx/constraintlayout/b/a/a/m;)V

    goto :goto_0

    .line 732
    :cond_3
    iget-object p3, p1, Landroidx/constraintlayout/b/a/a/p;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object p3, p3, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/d;

    .line 733
    instance-of v1, v0, Landroidx/constraintlayout/b/a/a/f;

    if-eqz v1, :cond_4

    .line 734
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/b/a/a/f;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/f;IILandroidx/constraintlayout/b/a/a/f;Ljava/util/ArrayList;Landroidx/constraintlayout/b/a/a/m;)V

    goto :goto_1

    :cond_5
    const/4 p3, 0x1

    if-ne p2, p3, :cond_7

    .line 737
    instance-of v0, p1, Landroidx/constraintlayout/b/a/a/n;

    if-eqz v0, :cond_7

    .line 738
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/b/a/a/n;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/d;

    .line 739
    instance-of v1, v0, Landroidx/constraintlayout/b/a/a/f;

    if-eqz v1, :cond_6

    .line 740
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/b/a/a/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/f;IILandroidx/constraintlayout/b/a/a/f;Ljava/util/ArrayList;Landroidx/constraintlayout/b/a/a/m;)V

    goto :goto_2

    .line 744
    :cond_7
    iget-object v0, p1, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/b/a/a/f;

    if-ne v1, p4, :cond_8

    .line 746
    iput-boolean p3, p6, Landroidx/constraintlayout/b/a/a/m;->c:Z

    :cond_8
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 748
    invoke-direct/range {v0 .. v6}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/f;IILandroidx/constraintlayout/b/a/a/f;Ljava/util/ArrayList;Landroidx/constraintlayout/b/a/a/m;)V

    goto :goto_3

    .line 750
    :cond_9
    iget-object v0, p1, Landroidx/constraintlayout/b/a/a/p;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/b/a/a/f;

    if-ne v1, p4, :cond_a

    .line 752
    iput-boolean p3, p6, Landroidx/constraintlayout/b/a/a/m;->c:Z

    :cond_a
    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 754
    invoke-direct/range {v0 .. v6}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/f;IILandroidx/constraintlayout/b/a/a/f;Ljava/util/ArrayList;Landroidx/constraintlayout/b/a/a/m;)V

    goto :goto_4

    :cond_b
    if-ne p2, p3, :cond_c

    .line 756
    instance-of p3, p1, Landroidx/constraintlayout/b/a/a/n;

    if-eqz p3, :cond_c

    .line 757
    check-cast p1, Landroidx/constraintlayout/b/a/a/n;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroidx/constraintlayout/b/a/a/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 758
    invoke-direct/range {v0 .. v6}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/f;IILandroidx/constraintlayout/b/a/a/f;Ljava/util/ArrayList;Landroidx/constraintlayout/b/a/a/m;)V

    goto :goto_5

    :cond_c
    :goto_6
    return-void
.end method

.method private a(Landroidx/constraintlayout/b/a/a/p;ILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/b/a/a/p;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/a/a/m;",
            ">;)V"
        }
    .end annotation

    .line 764
    iget-object v0, p1, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/a/d;

    .line 765
    instance-of v2, v1, Landroidx/constraintlayout/b/a/a/f;

    if-eqz v2, :cond_1

    .line 766
    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/b/a/a/f;

    const/4 v6, 0x0

    .line 767
    iget-object v7, p1, Landroidx/constraintlayout/b/a/a/p;->k:Landroidx/constraintlayout/b/a/a/f;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/f;IILandroidx/constraintlayout/b/a/a/f;Ljava/util/ArrayList;Landroidx/constraintlayout/b/a/a/m;)V

    goto :goto_0

    .line 768
    :cond_1
    instance-of v2, v1, Landroidx/constraintlayout/b/a/a/p;

    if-eqz v2, :cond_0

    .line 769
    check-cast v1, Landroidx/constraintlayout/b/a/a/p;

    .line 770
    iget-object v3, v1, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    const/4 v5, 0x0

    iget-object v6, p1, Landroidx/constraintlayout/b/a/a/p;->k:Landroidx/constraintlayout/b/a/a/f;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/f;IILandroidx/constraintlayout/b/a/a/f;Ljava/util/ArrayList;Landroidx/constraintlayout/b/a/a/m;)V

    goto :goto_0

    .line 773
    :cond_2
    iget-object v0, p1, Landroidx/constraintlayout/b/a/a/p;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/a/d;

    .line 774
    instance-of v2, v1, Landroidx/constraintlayout/b/a/a/f;

    if-eqz v2, :cond_4

    .line 775
    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/b/a/a/f;

    const/4 v6, 0x1

    .line 776
    iget-object v7, p1, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/f;IILandroidx/constraintlayout/b/a/a/f;Ljava/util/ArrayList;Landroidx/constraintlayout/b/a/a/m;)V

    goto :goto_1

    .line 777
    :cond_4
    instance-of v2, v1, Landroidx/constraintlayout/b/a/a/p;

    if-eqz v2, :cond_3

    .line 778
    check-cast v1, Landroidx/constraintlayout/b/a/a/p;

    .line 779
    iget-object v3, v1, Landroidx/constraintlayout/b/a/a/p;->k:Landroidx/constraintlayout/b/a/a/f;

    const/4 v5, 0x1

    iget-object v6, p1, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/f;IILandroidx/constraintlayout/b/a/a/f;Ljava/util/ArrayList;Landroidx/constraintlayout/b/a/a/m;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 783
    check-cast p1, Landroidx/constraintlayout/b/a/a/n;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/n;->a:Landroidx/constraintlayout/b/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/f;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/d;

    .line 784
    instance-of v1, v0, Landroidx/constraintlayout/b/a/a/f;

    if-eqz v1, :cond_6

    .line 785
    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/b/a/a/f;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    .line 786
    invoke-direct/range {v2 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/f;IILandroidx/constraintlayout/b/a/a/f;Ljava/util/ArrayList;Landroidx/constraintlayout/b/a/a/m;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V
    .locals 1

    .line 375
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->i:Landroidx/constraintlayout/b/a/a/b$a;

    iput-object p2, v0, Landroidx/constraintlayout/b/a/a/b$a;->d:Landroidx/constraintlayout/b/a/e$a;

    .line 376
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/e;->i:Landroidx/constraintlayout/b/a/a/b$a;

    iput-object p4, p2, Landroidx/constraintlayout/b/a/a/b$a;->e:Landroidx/constraintlayout/b/a/e$a;

    .line 377
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/e;->i:Landroidx/constraintlayout/b/a/a/b$a;

    iput p3, p2, Landroidx/constraintlayout/b/a/a/b$a;->f:I

    .line 378
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/e;->i:Landroidx/constraintlayout/b/a/a/b$a;

    iput p5, p2, Landroidx/constraintlayout/b/a/a/b$a;->g:I

    .line 379
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/e;->h:Landroidx/constraintlayout/b/a/a/b$b;

    iget-object p3, p0, Landroidx/constraintlayout/b/a/a/e;->i:Landroidx/constraintlayout/b/a/a/b$a;

    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/b/a/a/b$b;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$a;)V

    .line 380
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/e;->i:Landroidx/constraintlayout/b/a/a/b$a;

    iget p2, p2, Landroidx/constraintlayout/b/a/a/b$a;->h:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/a/e;->o(I)V

    .line 381
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/e;->i:Landroidx/constraintlayout/b/a/a/b$a;

    iget p2, p2, Landroidx/constraintlayout/b/a/a/b$a;->i:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/a/e;->p(I)V

    .line 382
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/e;->i:Landroidx/constraintlayout/b/a/a/b$a;

    iget-boolean p2, p2, Landroidx/constraintlayout/b/a/a/b$a;->k:Z

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/a/e;->c(Z)V

    .line 383
    iget-object p2, p0, Landroidx/constraintlayout/b/a/a/e;->i:Landroidx/constraintlayout/b/a/a/b$a;

    iget p2, p2, Landroidx/constraintlayout/b/a/a/b$a;->j:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/a/e;->s(I)V

    return-void
.end method

.method private a(Landroidx/constraintlayout/b/a/f;)Z
    .locals 12

    .line 387
    iget-object v0, p1, Landroidx/constraintlayout/b/a/f;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/e;

    .line 388
    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v3, v3, v2

    .line 389
    iget-object v4, v1, Landroidx/constraintlayout/b/a/e;->G:[Landroidx/constraintlayout/b/a/e$a;

    const/4 v9, 0x1

    aget-object v4, v4, v9

    .line 391
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 392
    iput-boolean v9, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    goto :goto_0

    .line 398
    :cond_1
    iget v5, v1, Landroidx/constraintlayout/b/a/e;->q:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v10

    const/4 v6, 0x2

    if-gez v5, :cond_2

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, v5, :cond_2

    .line 399
    iput v6, v1, Landroidx/constraintlayout/b/a/e;->l:I

    .line 401
    :cond_2
    iget v5, v1, Landroidx/constraintlayout/b/a/e;->t:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_3

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v4, v5, :cond_3

    .line 402
    iput v6, v1, Landroidx/constraintlayout/b/a/e;->m:I

    .line 404
    :cond_3
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->N()F

    move-result v5

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    const/4 v7, 0x3

    if-lez v5, :cond_9

    .line 405
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, v5, :cond_5

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq v4, v5, :cond_4

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v4, v5, :cond_5

    .line 406
    :cond_4
    iput v7, v1, Landroidx/constraintlayout/b/a/e;->l:I

    goto :goto_1

    .line 407
    :cond_5
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v4, v5, :cond_7

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq v3, v5, :cond_6

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, v5, :cond_7

    .line 408
    :cond_6
    iput v7, v1, Landroidx/constraintlayout/b/a/e;->m:I

    goto :goto_1

    .line 409
    :cond_7
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, v5, :cond_9

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v4, v5, :cond_9

    .line 410
    iget v5, v1, Landroidx/constraintlayout/b/a/e;->l:I

    if-nez v5, :cond_8

    .line 411
    iput v7, v1, Landroidx/constraintlayout/b/a/e;->l:I

    .line 413
    :cond_8
    iget v5, v1, Landroidx/constraintlayout/b/a/e;->m:I

    if-nez v5, :cond_9

    .line 414
    iput v7, v1, Landroidx/constraintlayout/b/a/e;->m:I

    .line 419
    :cond_9
    :goto_1
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, v5, :cond_b

    iget v5, v1, Landroidx/constraintlayout/b/a/e;->l:I

    if-ne v5, v9, :cond_b

    .line 420
    iget-object v5, v1, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v5, :cond_a

    iget-object v5, v1, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v5, :cond_b

    .line 421
    :cond_a
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    :cond_b
    move-object v5, v3

    .line 424
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v4, v3, :cond_d

    iget v3, v1, Landroidx/constraintlayout/b/a/e;->m:I

    if-ne v3, v9, :cond_d

    .line 425
    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v3, :cond_c

    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v3, :cond_d

    .line 426
    :cond_c
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    move-object v8, v3

    goto :goto_2

    :cond_d
    move-object v8, v4

    .line 430
    :goto_2
    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iput-object v5, v3, Landroidx/constraintlayout/b/a/a/l;->f:Landroidx/constraintlayout/b/a/e$a;

    .line 431
    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget v4, v1, Landroidx/constraintlayout/b/a/e;->l:I

    iput v4, v3, Landroidx/constraintlayout/b/a/a/l;->c:I

    .line 432
    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iput-object v8, v3, Landroidx/constraintlayout/b/a/a/n;->f:Landroidx/constraintlayout/b/a/e$a;

    .line 433
    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget v4, v1, Landroidx/constraintlayout/b/a/e;->m:I

    iput v4, v3, Landroidx/constraintlayout/b/a/a/n;->c:I

    .line 435
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-eq v5, v3, :cond_e

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v5, v3, :cond_e

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-ne v5, v3, :cond_f

    :cond_e
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-eq v8, v3, :cond_25

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v8, v3, :cond_25

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-ne v8, v3, :cond_f

    goto/16 :goto_4

    .line 454
    :cond_f
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    const/high16 v11, 0x3f000000    # 0.5f

    if-ne v5, v3, :cond_17

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq v8, v3, :cond_10

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v8, v3, :cond_17

    .line 455
    :cond_10
    iget v3, v1, Landroidx/constraintlayout/b/a/e;->l:I

    if-ne v3, v7, :cond_12

    .line 456
    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-ne v8, v2, :cond_11

    .line 457
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    const/4 v6, 0x0

    sget-object v7, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 459
    :cond_11
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v8

    int-to-float v2, v8

    .line 460
    iget v3, v1, Landroidx/constraintlayout/b/a/e;->K:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 461
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    sget-object v7, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 462
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 463
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 464
    iput-boolean v9, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    goto/16 :goto_0

    .line 466
    :cond_12
    iget v3, v1, Landroidx/constraintlayout/b/a/e;->l:I

    if-ne v3, v9, :cond_13

    .line 467
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 468
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/b/a/a/g;->m:I

    goto/16 :goto_0

    .line 470
    :cond_13
    iget v3, v1, Landroidx/constraintlayout/b/a/e;->l:I

    if-ne v3, v6, :cond_15

    .line 471
    iget-object v3, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v3, v3, v2

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v3, v4, :cond_14

    iget-object v3, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v3, v3, v2

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, v4, :cond_17

    .line 473
    :cond_14
    iget v2, v1, Landroidx/constraintlayout/b/a/e;->q:F

    .line 474
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 475
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v2

    .line 476
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 477
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 478
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 479
    iput-boolean v9, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    goto/16 :goto_0

    .line 484
    :cond_15
    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v3, :cond_16

    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v3, v9

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v3, :cond_17

    .line 486
    :cond_16
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 487
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 488
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 489
    iput-boolean v9, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    goto/16 :goto_0

    .line 494
    :cond_17
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v8, v3, :cond_20

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq v5, v3, :cond_18

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v5, v3, :cond_20

    .line 495
    :cond_18
    iget v3, v1, Landroidx/constraintlayout/b/a/e;->m:I

    if-ne v3, v7, :cond_1b

    .line 496
    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-ne v5, v2, :cond_19

    .line 497
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    const/4 v6, 0x0

    sget-object v7, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 499
    :cond_19
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v6

    .line 500
    iget v2, v1, Landroidx/constraintlayout/b/a/e;->K:F

    .line 501
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->O()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    div-float v2, v10, v2

    :cond_1a
    int-to-float v3, v6

    mul-float/2addr v3, v2

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 506
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    sget-object v7, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 507
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 508
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 509
    iput-boolean v9, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    goto/16 :goto_0

    .line 511
    :cond_1b
    iget v3, v1, Landroidx/constraintlayout/b/a/e;->m:I

    if-ne v3, v9, :cond_1c

    const/4 v6, 0x0

    .line 512
    sget-object v7, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 513
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/b/a/a/g;->m:I

    goto/16 :goto_0

    .line 515
    :cond_1c
    iget v3, v1, Landroidx/constraintlayout/b/a/e;->m:I

    if-ne v3, v6, :cond_1e

    .line 516
    iget-object v3, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v3, v3, v9

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v3, v4, :cond_1d

    iget-object v3, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v3, v3, v9

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, v4, :cond_20

    .line 518
    :cond_1d
    iget v2, v1, Landroidx/constraintlayout/b/a/e;->t:F

    .line 519
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v6

    .line 520
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v11

    float-to-int v8, v2

    .line 521
    sget-object v7, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 522
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 523
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 524
    iput-boolean v9, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    goto/16 :goto_0

    .line 529
    :cond_1e
    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v3, v6

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v3, :cond_1f

    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v3, v7

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-nez v3, :cond_20

    .line 531
    :cond_1f
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, v1

    move-object v7, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 532
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 533
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 534
    iput-boolean v9, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    goto/16 :goto_0

    .line 539
    :cond_20
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v5, v3, :cond_0

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v8, v3, :cond_0

    .line 540
    iget v3, v1, Landroidx/constraintlayout/b/a/e;->l:I

    if-eq v3, v9, :cond_24

    iget v3, v1, Landroidx/constraintlayout/b/a/e;->m:I

    if-ne v3, v9, :cond_21

    goto :goto_3

    .line 546
    :cond_21
    iget v3, v1, Landroidx/constraintlayout/b/a/e;->m:I

    if-ne v3, v6, :cond_0

    iget v3, v1, Landroidx/constraintlayout/b/a/e;->l:I

    if-ne v3, v6, :cond_0

    iget-object v3, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v3, v3, v2

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v3, v4, :cond_22

    iget-object v3, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v2, v3, v2

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v2, v3, :cond_0

    :cond_22
    iget-object v2, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v2, v2, v9

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v2, v3, :cond_23

    iget-object v2, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v2, v2, v9

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v2, v3, :cond_0

    .line 552
    :cond_23
    iget v2, v1, Landroidx/constraintlayout/b/a/e;->q:F

    .line 553
    iget v3, v1, Landroidx/constraintlayout/b/a/e;->t:F

    .line 554
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 555
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v3, v2

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 556
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    sget-object v7, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 557
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 558
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 559
    iput-boolean v9, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    goto/16 :goto_0

    .line 542
    :cond_24
    :goto_3
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    const/4 v6, 0x0

    sget-object v7, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 543
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/b/a/a/g;->m:I

    .line 544
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/b/a/a/g;->m:I

    goto/16 :goto_0

    .line 437
    :cond_25
    :goto_4
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v2

    .line 438
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne v5, v3, :cond_26

    .line 439
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result v2

    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget v3, v3, Landroidx/constraintlayout/b/a/d;->d:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget v3, v3, Landroidx/constraintlayout/b/a/d;->d:I

    sub-int/2addr v2, v3

    .line 440
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    move v6, v2

    move-object v5, v3

    goto :goto_5

    :cond_26
    move v6, v2

    .line 442
    :goto_5
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v2

    .line 443
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne v8, v3, :cond_27

    .line 444
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v2

    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget v3, v3, Landroidx/constraintlayout/b/a/d;->d:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget v3, v3, Landroidx/constraintlayout/b/a/d;->d:I

    sub-int/2addr v2, v3

    .line 445
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    move v8, v2

    move-object v7, v3

    goto :goto_6

    :cond_27
    move-object v7, v8

    move v8, v2

    :goto_6
    move-object v3, p0

    move-object v4, v1

    .line 447
    invoke-direct/range {v3 .. v8}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 448
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 449
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 450
    iput-boolean v9, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    goto/16 :goto_0

    :cond_28
    return v2
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 568
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/f;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/e;

    .line 569
    iget-boolean v2, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 572
    :cond_1
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->G:[Landroidx/constraintlayout/b/a/e$a;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    .line 573
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->G:[Landroidx/constraintlayout/b/a/e$a;

    const/4 v9, 0x1

    aget-object v10, v2, v9

    .line 574
    iget v2, v1, Landroidx/constraintlayout/b/a/e;->l:I

    .line 575
    iget v4, v1, Landroidx/constraintlayout/b/a/e;->m:I

    .line 577
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq v8, v5, :cond_3

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v8, v5, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v9

    .line 580
    :goto_2
    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq v10, v5, :cond_4

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v10, v5, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    move v3, v9

    .line 583
    :cond_5
    iget-object v4, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v4, v4, Landroidx/constraintlayout/b/a/a/g;->j:Z

    .line 584
    iget-object v5, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v5, v5, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v5, v5, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 587
    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v5, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v7, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 589
    iput-boolean v9, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    goto/16 :goto_3

    :cond_6
    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 591
    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v5, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v7, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 593
    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v10, v2, :cond_7

    .line 594
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/b/a/a/g;->m:I

    goto :goto_3

    .line 596
    :cond_7
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 597
    iput-boolean v9, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_a

    if-eqz v2, :cond_a

    .line 600
    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v5, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget v7, v2, Landroidx/constraintlayout/b/a/a/g;->g:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e$a;ILandroidx/constraintlayout/b/a/e$a;I)V

    .line 602
    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v8, v2, :cond_9

    .line 603
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    iput v3, v2, Landroidx/constraintlayout/b/a/a/g;->m:I

    goto :goto_3

    .line 605
    :cond_9
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 606
    iput-boolean v9, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    .line 609
    :cond_a
    :goto_3
    iget-boolean v2, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->b:Landroidx/constraintlayout/b/a/a/g;

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->b:Landroidx/constraintlayout/b/a/a/g;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->L()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public a(Landroidx/constraintlayout/b/a/a/b$b;)V
    .locals 0

    .line 60
    iput-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->h:Landroidx/constraintlayout/b/a/a/b$b;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/a/a/p;",
            ">;)V"
        }
    .end annotation

    .line 646
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 647
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->e:Landroidx/constraintlayout/b/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/l;->c()V

    .line 648
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->e:Landroidx/constraintlayout/b/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/n;->c()V

    .line 649
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->e:Landroidx/constraintlayout/b/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->e:Landroidx/constraintlayout/b/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->e:Landroidx/constraintlayout/b/a/f;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/f;->aH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/b/a/e;

    .line 653
    instance-of v3, v2, Landroidx/constraintlayout/b/a/h;

    if-eqz v3, :cond_1

    .line 654
    new-instance v3, Landroidx/constraintlayout/b/a/a/j;

    invoke-direct {v3, v2}, Landroidx/constraintlayout/b/a/a/j;-><init>(Landroidx/constraintlayout/b/a/e;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 657
    :cond_1
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->U()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 658
    iget-object v3, v2, Landroidx/constraintlayout/b/a/e;->d:Landroidx/constraintlayout/b/a/a/c;

    if-nez v3, :cond_2

    .line 660
    new-instance v3, Landroidx/constraintlayout/b/a/a/c;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroidx/constraintlayout/b/a/a/c;-><init>(Landroidx/constraintlayout/b/a/e;I)V

    .line 661
    iput-object v3, v2, Landroidx/constraintlayout/b/a/e;->d:Landroidx/constraintlayout/b/a/a/c;

    :cond_2
    if-nez v1, :cond_3

    .line 664
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 666
    :cond_3
    iget-object v3, v2, Landroidx/constraintlayout/b/a/e;->d:Landroidx/constraintlayout/b/a/a/c;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 668
    :cond_4
    iget-object v3, v2, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    :goto_1
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->V()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 671
    iget-object v3, v2, Landroidx/constraintlayout/b/a/e;->e:Landroidx/constraintlayout/b/a/a/c;

    if-nez v3, :cond_5

    .line 673
    new-instance v3, Landroidx/constraintlayout/b/a/a/c;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroidx/constraintlayout/b/a/a/c;-><init>(Landroidx/constraintlayout/b/a/e;I)V

    .line 674
    iput-object v3, v2, Landroidx/constraintlayout/b/a/e;->e:Landroidx/constraintlayout/b/a/a/c;

    :cond_5
    if-nez v1, :cond_6

    .line 677
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 679
    :cond_6
    iget-object v3, v2, Landroidx/constraintlayout/b/a/e;->e:Landroidx/constraintlayout/b/a/a/c;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 681
    :cond_7
    iget-object v3, v2, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :goto_2
    instance-of v3, v2, Landroidx/constraintlayout/b/a/j;

    if-eqz v3, :cond_0

    .line 684
    new-instance v3, Landroidx/constraintlayout/b/a/a/k;

    invoke-direct {v3, v2}, Landroidx/constraintlayout/b/a/a/k;-><init>(Landroidx/constraintlayout/b/a/e;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    .line 688
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 690
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/a/p;

    .line 691
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/a/p;->c()V

    goto :goto_3

    .line 693
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/a/a/p;

    .line 694
    iget-object v1, v0, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/e;->e:Landroidx/constraintlayout/b/a/f;

    if-ne v1, v2, :cond_b

    goto :goto_4

    .line 697
    :cond_b
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/a/p;->f()V

    goto :goto_4

    :cond_c
    return-void
.end method

.method public a(Z)Z
    .locals 8

    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 111
    iget-boolean v1, p0, Landroidx/constraintlayout/b/a/a/e;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/constraintlayout/b/a/a/e;->d:Z

    if-eqz v1, :cond_2

    .line 112
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/f;->aH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/b/a/e;

    .line 113
    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/e;->u()V

    .line 114
    iput-boolean v2, v3, Landroidx/constraintlayout/b/a/e;->b:Z

    .line 115
    iget-object v4, v3, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/a/l;->d()V

    .line 116
    iget-object v3, v3, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/a/n;->d()V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/f;->u()V

    .line 119
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iput-boolean v2, v1, Landroidx/constraintlayout/b/a/f;->b:Z

    .line 120
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/a/l;->d()V

    .line 121
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/a/n;->d()V

    .line 122
    iput-boolean v2, p0, Landroidx/constraintlayout/b/a/a/e;->d:Z

    .line 125
    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/e;->e:Landroidx/constraintlayout/b/a/f;

    invoke-direct {p0, v1}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/f;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 130
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/b/a/f;->m(I)V

    .line 131
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/b/a/f;->n(I)V

    .line 133
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/b/a/f;->v(I)Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    .line 134
    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/b/a/f;->v(I)Landroidx/constraintlayout/b/a/e$a;

    move-result-object v3

    .line 136
    iget-boolean v4, p0, Landroidx/constraintlayout/b/a/a/e;->c:Z

    if-eqz v4, :cond_4

    .line 137
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/a/e;->d()V

    .line 140
    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/f;->y()I

    move-result v4

    .line 141
    iget-object v5, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/f;->z()I

    move-result v5

    .line 143
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v6, v4}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 144
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 148
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/a/e;->a()V

    .line 151
    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq v1, v6, :cond_5

    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, v6, :cond_9

    :cond_5
    if-eqz p1, :cond_7

    .line 153
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/b/a/a/p;

    .line 154
    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/a/p;->a()Z

    move-result v7

    if-nez v7, :cond_6

    move p1, v2

    :cond_7
    if-eqz p1, :cond_8

    .line 161
    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-ne v1, v6, :cond_8

    .line 162
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    sget-object v7, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e$a;)V

    .line 163
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-direct {p0, v6, v2}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/f;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/b/a/f;->o(I)V

    .line 164
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v7, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    :cond_8
    if-eqz p1, :cond_9

    .line 166
    sget-object p1, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, p1, :cond_9

    .line 167
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/b/a/f;->b(Landroidx/constraintlayout/b/a/e$a;)V

    .line 168
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/f;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/b/a/f;->p(I)V

    .line 169
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 178
    :cond_9
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object p1, p1, v2

    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq p1, v6, :cond_b

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object p1, p1, v2

    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne p1, v6, :cond_a

    goto :goto_1

    :cond_a
    move p1, v2

    goto :goto_2

    .line 182
    :cond_b
    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result p1

    add-int/2addr p1, v4

    .line 183
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v6, p1}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 184
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    sub-int/2addr p1, v4

    invoke-virtual {v6, p1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 185
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/a/e;->a()V

    .line 186
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object p1, p1, v0

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq p1, v4, :cond_c

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object p1, p1, v0

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne p1, v4, :cond_d

    .line 188
    :cond_c
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result p1

    add-int/2addr p1, v5

    .line 189
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 190
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    .line 192
    :cond_d
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/a/e;->a()V

    move p1, v0

    .line 199
    :goto_2
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/a/p;

    .line 200
    iget-object v6, v5, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v7, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    if-ne v6, v7, :cond_e

    iget-boolean v6, v5, Landroidx/constraintlayout/b/a/a/p;->i:Z

    if-nez v6, :cond_e

    goto :goto_3

    .line 203
    :cond_e
    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/a/p;->e()V

    goto :goto_3

    .line 207
    :cond_f
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/a/p;

    if-nez p1, :cond_11

    .line 208
    iget-object v6, v5, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v7, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    if-ne v6, v7, :cond_11

    goto :goto_4

    .line 211
    :cond_11
    iget-object v6, v5, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v6, v6, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-nez v6, :cond_12

    :goto_5
    move v0, v2

    goto :goto_6

    .line 215
    :cond_12
    iget-object v6, v5, Landroidx/constraintlayout/b/a/a/p;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v6, v6, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-nez v6, :cond_13

    instance-of v6, v5, Landroidx/constraintlayout/b/a/a/j;

    if-nez v6, :cond_13

    goto :goto_5

    .line 219
    :cond_13
    iget-object v6, v5, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v6, v6, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez v6, :cond_10

    instance-of v6, v5, Landroidx/constraintlayout/b/a/a/c;

    if-nez v6, :cond_10

    instance-of v5, v5, Landroidx/constraintlayout/b/a/a/j;

    if-nez v5, :cond_10

    goto :goto_5

    .line 225
    :cond_14
    :goto_6
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e$a;)V

    .line 226
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/b/a/f;->b(Landroidx/constraintlayout/b/a/e$a;)V

    return v0
.end method

.method public a(ZI)Z
    .locals 9

    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 269
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/b/a/f;->v(I)Landroidx/constraintlayout/b/a/e$a;

    move-result-object v1

    .line 270
    iget-object v3, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/b/a/f;->v(I)Landroidx/constraintlayout/b/a/e$a;

    move-result-object v3

    .line 272
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/f;->y()I

    move-result v4

    .line 273
    iget-object v5, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/f;->z()I

    move-result v5

    if-eqz p1, :cond_4

    .line 276
    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-eq v1, v6, :cond_0

    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, v6, :cond_4

    .line 277
    :cond_0
    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/b/a/a/p;

    .line 278
    iget v8, v7, Landroidx/constraintlayout/b/a/a/p;->h:I

    if-ne v8, p2, :cond_1

    .line 279
    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/a/p;->a()Z

    move-result v7

    if-nez v7, :cond_1

    move p1, v2

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    .line 286
    sget-object p1, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-ne v1, p1, :cond_4

    .line 287
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e$a;)V

    .line 288
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-direct {p0, p1, v2}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/f;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/b/a/f;->o(I)V

    .line 289
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 292
    sget-object p1, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, p1, :cond_4

    .line 293
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/b/a/f;->b(Landroidx/constraintlayout/b/a/e$a;)V

    .line 294
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/f;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/b/a/f;->p(I)V

    .line 295
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-object v6, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    :cond_4
    :goto_0
    if-nez p2, :cond_6

    .line 306
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object p1, p1, v2

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq p1, v5, :cond_5

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object p1, p1, v2

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne p1, v5, :cond_7

    .line 308
    :cond_5
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result p1

    add-int/2addr p1, v4

    .line 309
    iget-object v5, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v5, v5, Landroidx/constraintlayout/b/a/a/l;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 310
    iget-object v5, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v5, v5, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    sub-int/2addr p1, v4

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    goto :goto_2

    .line 314
    :cond_6
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object p1, p1, v0

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq p1, v4, :cond_8

    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object p1, p1, v0

    sget-object v4, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-ne p1, v4, :cond_7

    goto :goto_1

    :cond_7
    move p1, v2

    goto :goto_3

    .line 316
    :cond_8
    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result p1

    add-int/2addr p1, v5

    .line 317
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/a/n;->k:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 318
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/b/a/a/g;->a(I)V

    :goto_2
    move p1, v0

    .line 322
    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/a/e;->a()V

    .line 325
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/a/p;

    .line 326
    iget v6, v5, Landroidx/constraintlayout/b/a/a/p;->h:I

    if-eq v6, p2, :cond_9

    goto :goto_4

    .line 329
    :cond_9
    iget-object v6, v5, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v7, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    if-ne v6, v7, :cond_a

    iget-boolean v6, v5, Landroidx/constraintlayout/b/a/a/p;->i:Z

    if-nez v6, :cond_a

    goto :goto_4

    .line 332
    :cond_a
    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/a/p;->e()V

    goto :goto_4

    .line 336
    :cond_b
    iget-object v4, p0, Landroidx/constraintlayout/b/a/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/b/a/a/p;

    .line 337
    iget v6, v5, Landroidx/constraintlayout/b/a/a/p;->h:I

    if-eq v6, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    .line 340
    iget-object v6, v5, Landroidx/constraintlayout/b/a/a/p;->d:Landroidx/constraintlayout/b/a/e;

    iget-object v7, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    if-ne v6, v7, :cond_e

    goto :goto_5

    .line 343
    :cond_e
    iget-object v6, v5, Landroidx/constraintlayout/b/a/a/p;->j:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v6, v6, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-nez v6, :cond_f

    :goto_6
    move v0, v2

    goto :goto_7

    .line 347
    :cond_f
    iget-object v6, v5, Landroidx/constraintlayout/b/a/a/p;->k:Landroidx/constraintlayout/b/a/a/f;

    iget-boolean v6, v6, Landroidx/constraintlayout/b/a/a/f;->j:Z

    if-nez v6, :cond_10

    goto :goto_6

    .line 351
    :cond_10
    instance-of v6, v5, Landroidx/constraintlayout/b/a/a/c;

    if-nez v6, :cond_c

    iget-object v5, v5, Landroidx/constraintlayout/b/a/a/p;->g:Landroidx/constraintlayout/b/a/a/g;

    iget-boolean v5, v5, Landroidx/constraintlayout/b/a/a/g;->j:Z

    if-nez v5, :cond_c

    goto :goto_6

    .line 357
    :cond_11
    :goto_7
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e$a;)V

    .line 358
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/b/a/f;->b(Landroidx/constraintlayout/b/a/e$a;)V

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 619
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/a/e;->c:Z

    return-void
.end method

.method public b(Z)Z
    .locals 3

    .line 232
    iget-boolean p1, p0, Landroidx/constraintlayout/b/a/a/e;->c:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 233
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->aH:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/e;

    .line 234
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->u()V

    .line 235
    iput-boolean v0, v1, Landroidx/constraintlayout/b/a/e;->b:Z

    .line 236
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-boolean v0, v2, Landroidx/constraintlayout/b/a/a/g;->j:Z

    .line 237
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    iput-boolean v0, v2, Landroidx/constraintlayout/b/a/a/l;->i:Z

    .line 238
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->f:Landroidx/constraintlayout/b/a/a/l;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/a/l;->d()V

    .line 239
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-boolean v0, v2, Landroidx/constraintlayout/b/a/a/g;->j:Z

    .line 240
    iget-object v2, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    iput-boolean v0, v2, Landroidx/constraintlayout/b/a/a/n;->i:Z

    .line 241
    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->g:Landroidx/constraintlayout/b/a/a/n;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/a/n;->d()V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->u()V

    .line 244
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iput-boolean v0, p1, Landroidx/constraintlayout/b/a/f;->b:Z

    .line 245
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/l;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-boolean v0, p1, Landroidx/constraintlayout/b/a/a/g;->j:Z

    .line 246
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    iput-boolean v0, p1, Landroidx/constraintlayout/b/a/a/l;->i:Z

    .line 247
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/a/l;->d()V

    .line 248
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/n;->g:Landroidx/constraintlayout/b/a/a/g;

    iput-boolean v0, p1, Landroidx/constraintlayout/b/a/a/g;->j:Z

    .line 249
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    iput-boolean v0, p1, Landroidx/constraintlayout/b/a/a/n;->i:Z

    .line 250
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/a/n;->d()V

    .line 251
    invoke-virtual {p0}, Landroidx/constraintlayout/b/a/a/e;->d()V

    .line 254
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->e:Landroidx/constraintlayout/b/a/f;

    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/f;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 259
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/b/a/f;->m(I)V

    .line 260
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/b/a/f;->n(I)V

    .line 261
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/l;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    .line 262
    iget-object p1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object p1, p1, Landroidx/constraintlayout/b/a/a/n;->j:Landroidx/constraintlayout/b/a/a/f;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/b/a/a/f;->a(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 626
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/a/e;->d:Z

    return-void
.end method

.method public d()V
    .locals 4

    .line 633
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/a/a/e;->a(Ljava/util/ArrayList;)V

    .line 636
    iget-object v0, p0, Landroidx/constraintlayout/b/a/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 638
    sput v0, Landroidx/constraintlayout/b/a/a/m;->a:I

    .line 639
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/f;->f:Landroidx/constraintlayout/b/a/a/l;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/e;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v2}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/p;ILjava/util/ArrayList;)V

    .line 640
    iget-object v1, p0, Landroidx/constraintlayout/b/a/a/e;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/f;->g:Landroidx/constraintlayout/b/a/a/n;

    iget-object v2, p0, Landroidx/constraintlayout/b/a/a/e;->a:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Landroidx/constraintlayout/b/a/a/e;->a(Landroidx/constraintlayout/b/a/a/p;ILjava/util/ArrayList;)V

    .line 642
    iput-boolean v0, p0, Landroidx/constraintlayout/b/a/a/e;->c:Z

    return-void
.end method
