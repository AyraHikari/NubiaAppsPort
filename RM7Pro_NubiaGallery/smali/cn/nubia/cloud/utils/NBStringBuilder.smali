.class public Lcn/nubia/cloud/utils/NBStringBuilder;
.super Ljava/lang/Object;
.source "NBStringBuilder.java"


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/utils/NBStringBuilder;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/cloud/utils/NBStringBuilder;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public append(C)Lcn/nubia/cloud/utils/NBStringBuilder;
    .locals 1

    .line 35
    iget-object v0, p0, Lcn/nubia/cloud/utils/NBStringBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(D)Lcn/nubia/cloud/utils/NBStringBuilder;
    .locals 1

    .line 25
    iget-object v0, p0, Lcn/nubia/cloud/utils/NBStringBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(I)Lcn/nubia/cloud/utils/NBStringBuilder;
    .locals 1

    .line 15
    iget-object v0, p0, Lcn/nubia/cloud/utils/NBStringBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(J)Lcn/nubia/cloud/utils/NBStringBuilder;
    .locals 1

    .line 20
    iget-object v0, p0, Lcn/nubia/cloud/utils/NBStringBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Lcn/nubia/cloud/utils/NBStringBuilder;)Lcn/nubia/cloud/utils/NBStringBuilder;
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/cloud/utils/NBStringBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/nubia/cloud/utils/NBStringBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcn/nubia/cloud/utils/NBStringBuilder;
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/nubia/cloud/utils/NBStringBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcn/nubia/cloud/utils/NBStringBuilder;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/nubia/cloud/utils/NBStringBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcn/nubia/cloud/utils/NBStringBuilder;
    .locals 1

    .line 30
    iget-object v0, p0, Lcn/nubia/cloud/utils/NBStringBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/StringBuilder;)Lcn/nubia/cloud/utils/NBStringBuilder;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/cloud/utils/NBStringBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method
