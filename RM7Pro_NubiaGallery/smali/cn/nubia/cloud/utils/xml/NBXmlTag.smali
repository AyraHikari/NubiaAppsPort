.class public Lcn/nubia/cloud/utils/xml/NBXmlTag;
.super Lcn/nubia/cloud/utils/xml/ABaseTag;
.source "NBXmlTag.java"


# instance fields
.field private final mSubTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/cloud/utils/xml/XmlTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/utils/xml/ABaseTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/utils/xml/NBXmlTag;->mSubTags:Ljava/util/List;

    return-void
.end method

.method public static obtain(Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;
    .locals 2

    .line 14
    new-instance v0, Lcn/nubia/cloud/utils/xml/NBXmlTag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/cloud/utils/xml/NBXmlTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;
    .locals 1

    .line 18
    new-instance v0, Lcn/nubia/cloud/utils/xml/NBXmlTag;

    invoke-direct {v0, p0, p1}, Lcn/nubia/cloud/utils/xml/NBXmlTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/utils/xml/ABaseTag;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addAttributeResource(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/utils/xml/ABaseTag;->addAttributeResource(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic addAttributes(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/nubia/cloud/utils/xml/ABaseTag;->addAttributes(Landroid/os/Bundle;)V

    return-void
.end method

.method public addSubTag(Lcn/nubia/cloud/utils/xml/XmlTag;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/NBXmlTag;->mSubTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/utils/xml/ABaseTag;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAttributeResourceValue(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/utils/xml/ABaseTag;->getAttributeResourceValue(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getAttributes()Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/nubia/cloud/utils/xml/ABaseTag;->getAttributes()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/nubia/cloud/utils/xml/ABaseTag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/utils/xml/XmlTag;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/NBXmlTag;->mSubTags:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/nubia/cloud/utils/xml/ABaseTag;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSubTags()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/NBXmlTag;->mSubTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/NBXmlTag;->mSubTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    invoke-super {p0}, Lcn/nubia/cloud/utils/xml/ABaseTag;->recycle()V

    return-void
.end method
